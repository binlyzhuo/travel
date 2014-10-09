using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 酒店信息
    /// </summary>
    public class HotelPrimaryInfo
    {
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelID { set; get; }

        /// <summary>
        /// 酒店所在城市
        /// </summary>
        public int HotelCityCode { set; get; }

        /// <summary>
        /// 酒店名次
        /// </summary>
        public string HotelName { set; get; }

        /// <summary>
        /// 酒店价格
        /// </summary>
        public int AmountBeforeTax { set; get; }

        /// <summary>
        /// 酒店地址
        /// </summary>
        public string AddressLine { set; get; }


        /// <summary>
        /// 酒店图片
        /// </summary>
        public string HotelImg { set; get; }


        /// <summary>
        /// 门市价格
        /// </summary>
        public int ListAmount { set; get; }

        public string TrueAmount { set; get; }

        /// <summary>
        /// 距离
        /// </summary>
        public float Distance { set; get; }

        
    }
}
