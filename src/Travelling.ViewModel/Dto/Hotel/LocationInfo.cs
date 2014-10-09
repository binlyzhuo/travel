using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    /// <summary>
    /// 行政区域
    /// </summary>
    public class LocationInfo
    {
        /// <summary>
        /// 主键
        /// </summary>
        public int LocationID
        {
            set;
            get;
        }
        /// <summary>
        /// 名称
        /// </summary>
        public string LocationName
        {
            set;
            get;
        }
        /// <summary>
        /// 英文名称
        /// </summary>
        public string LocationEName
        {
            set;
            get;
        }
        /// <summary>
        /// 城市ID
        /// </summary>
        public int LocationCityID
        {
            set;
            get;
        }
        /// <summary>
        /// 是否同步过酒店的数据
        /// </summary>
        public int State
        {
            set;
            get;
        }
    }
}
