using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    /// <summary>
    /// 酒店热门城市信息
    /// </summary>
    public class HotelHotCityInfo
    {
        /// <summary>
        /// 城市ID
        /// </summary>
        public int CityID { set; get; }

        /// <summary>
        /// 酒店城市名称
        /// </summary>
        public string CityName { set; get; }

        /// <summary>
        /// 是否有效
        /// </summary>
        public int State { set; get; }

        /// <summary>
        /// 展示顺序
        /// </summary>
        public int OrderNum { set; get; }
    }
}
