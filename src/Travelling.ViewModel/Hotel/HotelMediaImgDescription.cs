using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Hotel
{
    /// <summary>
    /// 酒店对媒体图片信息
    /// </summary>
    public class HotelMediaImgDescription
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
