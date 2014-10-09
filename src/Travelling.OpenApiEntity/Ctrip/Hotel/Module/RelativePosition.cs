using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 周边热门地标地理信息
    /// </summary>
    [Serializable]
    public class RelativePosition
    {
        /// <summary>
        /// 和酒店的距离
        /// </summary>
        public decimal Distance { set; get; }

        /// <summary>
        /// 热点，地标名称
        /// </summary>
        public string Name { set; get; }

        /// <summary>
        /// 距离单位
        /// </summary>
        public int UnitOfMeasureCode { set; get; }

        /// <summary>
        /// 地标类别代码,参考CodeList (REF)
        /// </summary>
        public int RefPointCategoryCode { set; get; }

        /// <summary>
        /// 纬度
        /// </summary>
        public decimal Latitude { set; get; }

        /// <summary>
        /// 经度
        /// </summary>
        public decimal Longitude { set; get; }

        /// <summary>
        /// 描述信息
        /// </summary>
        public string DescriptionText { set; get; }
    }
}
