using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    /// <summary>
    /// 酒店服务项目类型
    /// </summary>
    public enum HotelAmenityType
    {
        /// <summary>
        /// 宾馆服务项目
        /// </summary>
        [Description("宾馆服务项目")]
        HotelServiceType = 1001,

        /// <summary>
        /// 宾馆餐饮设施
        /// </summary>
        [Description("宾馆餐饮设施")]
        HotelRepastSetting = 1002,

        /// <summary>
        /// 宾馆娱乐与健身设施
        /// </summary>
        [Description("宾馆娱乐与健身设施")]
        HotelEntertainmentSetting = 1003,

        /// <summary>
        /// 客房设施和服务
        /// </summary>
        [Description("客房设施和服务")]
        HotelRoomSetting=1004

    }
}
