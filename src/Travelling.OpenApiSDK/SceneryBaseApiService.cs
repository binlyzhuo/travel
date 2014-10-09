using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Xml;
using Travelling.OpenApiEntity.Scenery;

namespace Travelling.OpenApiSDK
{
    public class SceneryServiceBase
    {
        private string AllianceID
        {
            get
            {
                return ConfigurationManager.AppSettings["TC_AllianceID"];
            }
        }

        private string AccountID
        {
            get
            {
                return ConfigurationManager.AppSettings["TC_Account"];
            }
        }

        private string AccountKey
        {
            get
            {
                return ConfigurationManager.AppSettings["TC_KEY"];
            }
        }

        private string SceneryInfoQueryUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["TC_SceneryQueryUrl"];
            }
        }

        private string SceneryOrderUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["TC_SceneryOrderUrl"];
            }
        }

        /// <summary>
        /// 获取字符数组的MD5哈希值
        /// </summary>
        /// <param name="sortedArray">待计算MD5哈希值的输入字符数组</param>
        /// <param name="key">密钥</param>
        /// <param name="charset">输入字符串的字符集</param>
        /// <returns>输入字符数组的MD5哈希值</returns>
        private string GetMD5ByArray(string[] sortedArray, string key, string charset)
        {
            //构造待md5摘要字符串
            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < sortedArray.Length; i++)
            {
                if (i == sortedArray.Length - 1)
                {
                    builder.Append(sortedArray[i]);
                }
                else
                {
                    builder.Append(sortedArray[i] + "&");
                }
            }
            builder.Append(key);
            return GetMD5(builder.ToString(), charset);
        }

        /// <summary>
        /// MD5 哈希运算
        /// </summary>
        /// <param name="input">待计算MD5哈希值的输入字符串</param>
        /// <param name="charset">输入字符串的字符集</param>
        /// <returns>输入字符串的MD5哈希值</returns>
        private string GetMD5(string input, string charset)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(Encoding.GetEncoding(charset).GetBytes(input));
            StringBuilder builder = new StringBuilder(32);
            for (int i = 0; i < data.Length; i++)
            {
                builder.Append(data[i].ToString("x2"));
            }
            return builder.ToString();
        }

        /// <summary>
        /// 数组排序（冒泡排序法）
        /// </summary>
        /// <param name="originalArray">待排序字符串数组</param>
        /// <returns>经过冒泡排序过的字符串数组</returns>
        private string[] BubbleSort(string[] originalArray)
        {
            int i, j; //交换标志 
            string temp;
            bool exchange;

            for (i = 0; i < originalArray.Length; i++) //最多做R.Length-1趟排序 
            {
                exchange = false; //本趟排序开始前，交换标志应为假

                for (j = originalArray.Length - 2; j >= i; j--)
                {
                    if (String.CompareOrdinal(originalArray[j + 1], originalArray[j]) < 0)　//交换条件
                    {
                        temp = originalArray[j + 1];
                        originalArray[j + 1] = originalArray[j];
                        originalArray[j] = temp;

                        exchange = true; //发生了交换，故将交换标志置为真 
                    }
                }

                if (!exchange) //本趟排序未发生交换，提前终止算法 
                {
                    break;
                }
            }
            return originalArray;
        }

        /// <summary>
        /// 创建数字签名
        /// </summary>
        /// <param name="htValidationParams">存放数字签名参数的Hashtable</param>
        /// <returns>DigitalSign</returns>
        private string CreateDigitalSign(Hashtable htValidationParams)
        {
            if (!htValidationParams.Contains("AccountKey")
                || String.IsNullOrWhiteSpace(htValidationParams["AccountKey"].ToString()))
            {
                throw new ApplicationException("缺少API帐户密钥");
            }

            string accountKey = htValidationParams["AccountKey"].ToString().Trim();   //API帐户密钥

            List<string> stringList = new List<string>();
            if (htValidationParams.Contains("Version"))
                stringList.Add(string.Format("Version={0}", htValidationParams["Version"].ToString()));
            if (htValidationParams.Contains("AccountID"))
                stringList.Add(string.Format("AccountID={0}", Guid.Parse(htValidationParams["AccountID"].ToString())));
            if (htValidationParams.Contains("ServiceName"))
                stringList.Add(string.Format("ServiceName={0}", htValidationParams["ServiceName"].ToString()));
            if (htValidationParams.Contains("ReqTime")
                && htValidationParams["ReqTime"] != null)
            {
                //DateTime reqDt = 
                stringList.Add(string.Format("ReqTime={0}", (DateTime.Parse(htValidationParams["ReqTime"].ToString())).ToString("yyyy-MM-dd HH:mm:ss.fff")));
            }


            string[] originalArray = stringList.ToArray();
            string[] sortedArray = BubbleSort(originalArray);
            string digitalSing = GetMD5ByArray(sortedArray, accountKey, "utf-8");

            return digitalSing;
        }


        protected TongChengBaseReturnEntity SceneryInfoQuery(string reqBody, string serviceName)
        {
            string url = ConfigurationManager.AppSettings["TC_SceneryQueryUrl"];
            return SceneryApi(reqBody, serviceName, url);
        }

        protected TongChengBaseReturnEntity SceneryCommentQuery(string reqBody, string serviceName)
        {
            string url = ConfigurationManager.AppSettings["TC_SceneryCommentUrl"];
            return SceneryApi(reqBody, serviceName, url);
        }


        protected TongChengBaseReturnEntity SceneryOrderQuery(string reqBody, string serviceName)
        {
            string url = SceneryOrderUrl;
            return SceneryApi(reqBody, serviceName, url);
        }

        private TongChengBaseReturnEntity SceneryApi(string reqBody, string serviceName, string url)
        {
            string header = GetRequestHeader(serviceName);
            string reqContent = string.Format("<request>{0}<body>{1}</body></request>", header, reqBody);
            string repContent = HttpCaller.PostDataToServer(url, reqContent);
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(repContent);
            var headerNode = xmlDoc.SelectSingleNode("response/header");

            TongChengBaseReturnEntity returnEntity = new TongChengBaseReturnEntity(
                headerNode.SelectSingleNode("actionCode").InnerText.Trim().ToInt32(),
                headerNode.SelectSingleNode("rspType").InnerText.Trim().ToInt32(),
                headerNode.SelectSingleNode("rspCode").InnerText.Trim(),
                headerNode.SelectSingleNode("rspDesc").InnerText.Trim(),
                headerNode.SelectSingleNode("rspTime").InnerText.Trim().ToDateTime()
                );
            var body = xmlDoc.SelectSingleNode("response/body");
            returnEntity.RepXmlContent = GetRepContent(body.InnerXml);
            
            return returnEntity;
        }

        private string GetRequestHeader(string serviceName)
        {
            Hashtable ht = new Hashtable();
            string reqDt = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff");
            ht.Add("Version", "20111128102912");                            //接口协议版本号，详见接口协议文档
            ht.Add("AccountID", AccountID);                                        //API帐户ID，待申请审批通过后发放
            ht.Add("AccountKey", AccountKey);                                       //API帐户密钥，待申请审批通过后发放
            ht.Add("ServiceName", serviceName);                          //调用接口的方法名称
            ht.Add("ReqTime", reqDt);

            StringBuilder reqXml = new StringBuilder();
            reqXml.Append("<header>");
            reqXml.AppendFormat("<version>{0}</version>", "20111128102912");
            reqXml.AppendFormat("<accountID>{0}</accountID>", AccountID);
            reqXml.AppendFormat("<serviceName>{0}</serviceName>", serviceName);
            reqXml.AppendFormat("<digitalSign>{0}</digitalSign>", CreateDigitalSign(ht));
            reqXml.AppendFormat("<reqTime>{0}</reqTime>", reqDt);
            reqXml.Append("</header>");
            return reqXml.ToString();
        }

        private XmlDocument GetRepContent(string content)
        {
            XmlDocument xmlDoc = new XmlDocument();
            string str = string.Format("<rep>{0}</rep>", content);
            xmlDoc.LoadXml(str);
            return xmlDoc;
        }
    }
}
