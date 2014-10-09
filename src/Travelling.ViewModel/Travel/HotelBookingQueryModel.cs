using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 酒店预定查询
    /// </summary>
    public class HotelBookingQueryModel : BasePageQuery
    {
        public string HotelCityName { set; get; }
        public int HotelCityID { set; get; }

        public string HotelName { set; get; }
        public DateTime HotelInRoomDate { set; get; }
        public DateTime HotelLeaveRoomDate { set; get; }
        public HotelPriceLevel HotelPriceLevel { set; get; }
        public HotelStarLevel HotelStarLevel { set; get; }
    }
}
