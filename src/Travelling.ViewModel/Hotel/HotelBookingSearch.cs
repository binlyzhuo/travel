using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Hotel
{
    /// <summary>
    /// 酒店查询请求实体
    /// </summary>
    public class HotelBookingSearch : BasePageQuery
    {
        /// <summary>
        /// 酒店所在城市
        /// </summary>
        public int HotelCityID { set; get; }

        /// <summary>
        /// 入住时间
        /// </summary>
        public DateTime InRoomDate { set; get; }

        /// <summary>
        /// 离店时间
        /// </summary>
        public DateTime LeaveRoomDate { set; get; }

        public int HotelLevel { set; get; }
    }
}
