using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_HotelResNotifCallEntity:CtripBaseAPICallEntity
    {
        public OTA_HotelResNotifCallEntity()
            : base("OTA_HotelResNotif")
        {
            //this.LastModifyDateTime = DateTime.Now;
        }

        /// <summary>
        /// 上次更新的时间戳
        /// </summary>
        public DateTime LastModifyDateTime { get; set; }
    }
}
