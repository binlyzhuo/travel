using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web.Security;

namespace Travelling.OpenApiSDK
{
    /// <summary>
    /// Summary description for APICommon
    /// </summary>
    public class CtripAPICommon
    {
        internal static string APIService = string.Empty;

        internal static string AllianceID = string.Empty;

        internal static string SID = string.Empty;

        internal static string SecretKey = string.Empty;

        public CtripAPICommon(string sid, string aid, string strkey, string strServer)
        {
            SID = sid;
            AllianceID = aid;
            SecretKey = strkey;
            APIService = strServer;
        }

        /// <summary>
        /// Generate the timestamp for the signature
        /// </summary>
        /// <returns></returns>
        protected static string GenerateTimeStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1950, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalSeconds).ToString();
        }

        /// <summary>
        /// 将DataRow数组转换到数据表
        /// </summary>
        /// <param name="drs"></param>
        /// <returns></returns>
        public static DataTable ArrayDataRowToDataTable(DataRow[] drs)
        {
            DataTable resultdt = null;
            if (drs.Length > 0)
            {
                resultdt = drs[0].Table.Clone();
                foreach (DataRow dr in drs)
                {
                    resultdt.ImportRow(dr);
                }
            }
            return resultdt;
        }

        /// <summary>
        /// 生成API访问URI
        /// </summary>
        /// <param name="strFileName"></param>
        /// <returns></returns>
        public string GetRequestURL(string strFileName)
        {
            string ts = GenerateTimeStamp();
            string MD5SharedSecret = FormsAuthentication.HashPasswordForStoringInConfigFile(SecretKey, "MD5");
            string signature = FormsAuthentication.HashPasswordForStoringInConfigFile(ts + SID + MD5SharedSecret, "md5");
            string ResultURL = string.Format("{0}/{1}?sid={2}&AllianceID={3}&Timestamp={4}&Signature={5}", APIService, strFileName, SID, AllianceID, ts, signature);
            return ResultURL;
        }

        /// <summary>
        /// 自动生成xml头信息
        /// </summary>
        /// <param name="serviceName"></param>
        /// <returns></returns>
        public string GetHeadXML(string requestType, string culture)
        {
            string timeStamp = "";
            string signature = "";
            GetSignature(SID, AllianceID, SecretKey, out timeStamp, out signature, requestType);
            return "<Request><Header AllianceID=\"" + AllianceID + "\" SID=\"" + SID + "\" TimeStamp=\"" + timeStamp + "\"  RequestType=\"" + requestType + "\" Signature=\"" + signature + "\" Culture=\"" + culture + "\" />{0}</Request>";
        }

        protected void GetSignature(string sid, string allianceID, string secretKey, out string timeStamp, out string signature, string requestType)
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            timeStamp = Convert.ToInt64(ts.TotalSeconds).ToString();
            string MD5SharedSecret = FormsAuthentication.HashPasswordForStoringInConfigFile(secretKey, "MD5");
            signature = FormsAuthentication.HashPasswordForStoringInConfigFile(timeStamp + allianceID + MD5SharedSecret + sid + requestType, "MD5");
        }
    }
}
