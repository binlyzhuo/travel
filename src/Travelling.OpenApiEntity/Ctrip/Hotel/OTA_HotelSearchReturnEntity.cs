using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 
    /// </summary>
    public class OTA_HotelSearchReturnEntity : CtripBaseAPIReturnEntity
    {
        private List<CtripHotelRepEntity> hotelList = new List<CtripHotelRepEntity>();

        /// <summary>
        /// 酒店信息列表
        /// </summary>
        public List<CtripHotelRepEntity> HotelList
        {
            get
            {
                return this.hotelList;
            }
            set
            {
                this.hotelList = value;
            }
        }
    }
}
