using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;

namespace Travelling.OpenApiSDK
{
    public class HttpCaller
    {
        /// <summary>
        /// 向服务器提交XML数据
        /// </summary>
        /// <param name="url">远程访问的地址</param>
        /// <param name="data">参数</param>
        /// <param name="method">Http页面请求方法</param>
        /// <returns>远程页面调用结果</returns>
        public static string PostDataToServer(string url, string data, string method = "POST")
        {
            HttpWebRequest request = null;

            try
            {
                request = WebRequest.Create(url) as HttpWebRequest;
                request.Timeout = 60000000;
                request.KeepAlive = false;
                System.Net.ServicePointManager.Expect100Continue = false;
                switch (method.ToUpper())
                {
                    case "GET":
                        request.Method = "GET";
                        break;
                    case "POST":
                        {
                            request.Method = "POST";

                            byte[] bdata = Encoding.UTF8.GetBytes(data);
                            request.ContentType = "application/xml;charset=utf-8";
                            request.ContentLength = bdata.Length;

                            Stream streamOut = request.GetRequestStream();
                            streamOut.Write(bdata, 0, bdata.Length);
                            streamOut.Close();
                        }
                        break;
                }

                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                Stream streamIn = response.GetResponseStream();

                StreamReader reader = new StreamReader(streamIn);
                string result = reader.ReadToEnd();
                reader.Close();
                streamIn.Close();
                response.Close();

                return result;
            }
            catch
            {
                throw;
            }
            finally
            {

            }
        }
    }
}
