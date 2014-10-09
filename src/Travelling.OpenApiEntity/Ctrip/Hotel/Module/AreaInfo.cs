using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 行政区信息
    /// </summary>
    public class AreaInfo
    {
        /// <summary>
        /// 距离数
        /// </summary>
        public decimal Distance { set; get; }

        /// <summary>
        /// 距离单位代码
        /// </summary>
        public int UnitOfMeasureCode { set; get; }

        /// <summary>
        /// 地标名称
        /// </summary>
        public string Name { set; get; }

        /// <summary>
        /// 地标类别代码，参考CodeList (REF)
        /// </summary>
        public int RefPointCategoryCode { set; get; }

        /// <summary>
        /// 参考点名称
        /// </summary>
        public string RefPointName { set; get; }

        /// <summary>
        /// 纬度
        /// </summary>
        public string Latitude { set; get; }

        /// <summary>
        /// 经度
        /// </summary>
        public string Longitude { set; get; }

        /// <summary>
        /// 描述信息
        /// </summary>
        public string DescriptiveText { set; get; }
    }
}
