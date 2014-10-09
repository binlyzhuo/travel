using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 下单错误信息
    /// </summary>
    public class ErrorInfo
    {
        /// <summary>
        /// 错误类型
        /// </summary>
        public int Type { set; get; }

        /// <summary>
        /// 错误简介
        /// </summary>
        public string ShortText { set; get; }

        /// <summary>
        /// 错误编码
        /// </summary>
        public int Code { set; get; }

        /// <summary>
        /// 错误描述信息
        /// </summary>
        public string Text { set; get; }
    }
}
