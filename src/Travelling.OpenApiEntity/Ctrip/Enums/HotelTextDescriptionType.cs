using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    /// <summary>
    /// 酒店静态描述信息类型
    /// </summary>
    public enum HotelTextDescriptionType
    {
        /// <summary>
        /// 长描述
        /// </summary>
        LongDescription = 5,

        /// <summary>
        /// 短描述
        /// </summary>
        ShortDescription = 8,

        /// <summary>
        /// 酒店简介
        /// </summary>
        Brochure = 11,
        
        /// <summary>
        /// 携程酒店网址
        /// </summary>
        Hotel_webpage_URL_on_Ctrip = 501
    }
}
