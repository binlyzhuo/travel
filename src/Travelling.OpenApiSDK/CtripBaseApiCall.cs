using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Text;
using System.Xml;
using System.Threading;
using Travelling.OpenApiEntity.Ctrip;
using Travelling.FrameWork;
using Travelling.CommonLibrary;


namespace Travelling.OpenApiSDK
{
    /// <summary>
    /// 携程接口请求处理类
    /// </summary>
    public abstract class CtripBaseApiCall
    {
        private readonly string allianceID;
        private readonly string sID;
        private readonly string apiKey;
        private readonly string ctripApiUrl;

        public CtripBaseApiCall()
        {
            allianceID = ConfigurationManager.AppSettings["C_ALLIANCEID"];
            sID = ConfigurationManager.AppSettings["C_SID"];
            apiKey = ConfigurationManager.AppSettings["C_APIKEY"];
            ctripApiUrl = ConfigurationManager.AppSettings["C_APIURL"];
        }

        /// <summary>
        /// 携程联盟ID
        /// </summary>
        protected string AllianceID
        {
            get
            {
                return this.allianceID;
            }
        }

        /// <summary>
        /// 携程联盟站点ID
        /// </summary>
        protected string SID
        {
            get
            {
                return this.sID;
            }
        }

        /// <summary>
        /// 携程联盟站点访问密钥
        /// </summary>
        protected string APIKEY
        {
            get
            {
                return this.apiKey;
            }
        }

        /// <summary>
        /// 携程请求URL
        /// </summary>
        protected string CtripApiUrl
        {
            get
            {
                return this.ctripApiUrl;
            }
        }

       
        /// <summary>
        /// 请求接口地址
        /// </summary>
        /// <param name="requestEntity"></param>
        /// <returns></returns>
        protected string HotelApiCall(CtripBaseAPICallEntity requestEntity)
        {
            string requestUrl = string.Format("{0}/Hotel/{1}.asmx", CtripApiUrl, requestEntity.RequestType);
            HttpWebRequest request = HttpWebRequest.Create(requestUrl) as HttpWebRequest;
            request.Method = "POST";
            request.ContentType = "application/xml";
            string lang = "ZH-CN";


            CtripAPICommon apicommon = new CtripAPICommon(SID, AllianceID, APIKEY, requestUrl);
            string requestHeader = apicommon.GetHeadXML(requestEntity.RequestType, lang);
            string strInputXML = requestEntity.RequestContent;
            strInputXML = "<HotelRequest><RequestBody xmlns:ns=\"http://www.opentravel.org/OTA/2003/05\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">" + strInputXML + "</RequestBody></HotelRequest>";
            string requestXML = string.Format(requestHeader, strInputXML);
            Hashtable ht = new Hashtable();
            ht.Add("requestXML", requestXML);
            try
            {

                XmlDocument xd = WebSvcCaller.QuerySoapWebService(requestUrl, "Request", ht);
                string repXml = xd.InnerXml.Replace("xmlns=\"http://www.opentravel.org/OTA/2003/05\"", "");
                return repXml;
            }
            catch (Exception ex)
            {
                LogHelper.Error(requestXML, ex);
                Thread.Sleep(6000);
            }
            return null;
        }

        /// <summary>
        /// 获取接口请求结果
        /// </summary>
        /// <param name="xmlDoc"></param>
        /// <returns></returns>
        protected void GetHeaderResult(XmlDocument xmlDoc,CtripBaseAPIReturnEntity returnEntity)
        {
            
            try
            {
                XmlElement headerNode = (XmlElement)xmlDoc.SelectSingleNode("Response/Header");
                
                string ShouldRecordPerformanceTime = headerNode.GetAttribute("ShouldRecordPerformanceTime");
                string timestamp = headerNode.GetAttribute("Timestamp");
                string ReferenceID = headerNode.GetAttribute("ReferenceID");
                string RecentlyTime = headerNode.GetAttribute("RecentlyTime");
                string AccessCount = headerNode.GetAttribute("AccessCount");
                string CurrentCount = headerNode.GetAttribute("CurrentCount");
                string ResetTime = headerNode.GetAttribute("ResetTime");
                string ResultCode = headerNode.GetAttribute("ResultCode");
                string ResultMsg = string.IsNullOrEmpty(headerNode.GetAttribute("ResultMsg")) ? "" : headerNode.GetAttribute("ResultMsg").Trim();
                string ResultNo = string.IsNullOrEmpty(headerNode.GetAttribute("ResultCode")) ? "" : headerNode.GetAttribute("ResultCode").Trim();
                
                CtripApiReturnHeaderInfo headerInfo = new CtripApiReturnHeaderInfo(ReferenceID, ResultCode, ResultNo, ResultMsg, timestamp);
                headerInfo.ShouldRecordPerformanceTime = ShouldRecordPerformanceTime;
                headerInfo.AccessCount = !string.IsNullOrWhiteSpace(headerNode.GetAttribute("AccessCount"))?Convert.ToInt32(headerNode.GetAttribute("AccessCount").Trim()):0;
                headerInfo.CurrentCount = !string.IsNullOrWhiteSpace(headerNode.GetAttribute("CurrentCount")) ? Convert.ToInt32(headerNode.GetAttribute("CurrentCount").Trim()) : 0;
                headerInfo.ResetTime = !string.IsNullOrWhiteSpace(headerNode.GetAttribute("ResetTime")) ? headerNode.GetAttribute("ResetTime").Trim() : DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss:fff");
                headerInfo.RecentlyTime = !string.IsNullOrWhiteSpace(headerNode.GetAttribute("RecentlyTime")) ? headerNode.GetAttribute("RecentlyTime").Trim() : DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss:fff");

                returnEntity.GetReturnHeaderInfo(headerInfo);

            }
            catch
            {
                throw;
            }
            
        }

        

    }
}
