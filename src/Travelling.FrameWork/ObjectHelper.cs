using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.FrameWork
{
    public static class ObjectHelper
    {
        public static string SubString(this string source, int len)
        {
            if (string.IsNullOrEmpty(source))
            {
                return "";
            }
            if (source.Trim().Length > len)
            {
                return source.Substring(0, len);
            }
            else
            {
                return source.Trim();
            }
        }

        /// <summary>
        /// 携程接口对应的时间格式
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static string ToCtripDateFormat(this DateTime dt)
        {
            return string.Format("{0}.000+08:00", dt.GetDateTimeFormats('s')[0].ToString());
        }

    }
}
