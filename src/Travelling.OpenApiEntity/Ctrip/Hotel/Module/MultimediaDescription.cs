using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店房间娱乐设置
    /// </summary>
    public class MultimediaImgDescription
    {
        /// <summary>
        /// 名称
        /// </summary>
        public string Caption { set; get; }

        /// <summary>
        /// 目录
        /// </summary>
        public string Category { set; get; }

        /// <summary>
        /// 描述
        /// </summary>
        public string Description { set; get; }

        /// <summary>
        /// 图片地址
        /// </summary>
        public string Url { set; get; }
    }
}
