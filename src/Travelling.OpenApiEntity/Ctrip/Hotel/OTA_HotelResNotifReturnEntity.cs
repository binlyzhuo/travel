using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_HotelResNotifReturnEntity:CtripBaseAPIReturnEntity
    {
        public OTA_HotelResNotifReturnEntity()
        { }

        /// <summary>
       /// 酒店预订信息列表
        /// </summary>
       public List<HotelReservation> HotelReservationList { get; set; }
    }
}
