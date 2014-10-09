using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Travelling.OpenApiSDK
{
    public static class StringExtends
    {
        public static int ToInt32(this string str)
        {
            int num = 0;
            int.TryParse(str, out num);
            return num;
        }

        public static decimal ToDecimal(this string str)
        {
            decimal value = 0;
            decimal.TryParse(str, out value);
            return value;
        }

        /// <summary>
        /// 默认时间1900-1-1
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static DateTime ToDateTime(this string str)
        {
            DateTime dt = DateTime.Parse("1900-1-1");
            if (DateTime.TryParse(str, out dt))
            {
                return dt;
            }
            return dt;
        }

        /// <summary>
        /// 携程接口对应的时间格式
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static string ToCtripDateFormat(this DateTime dt)
        {
            return string.Format("{0}.000+08:00",dt.GetDateTimeFormats('s')[0].ToString());
        }

        /// <summary>
        /// 携程接口对应的时间格式
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static string ToCtripTimeFormat(this DateTime dt)
        {
            return string.Format("{0}.000+08:00", dt.ToString("HH:mm:ss"));
        }

        /// <summary>
        /// 转Xml
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static XmlDocument ToXml(this string str)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(str);
            return xmlDoc;
        }
    }
}
