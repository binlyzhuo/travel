using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    [Serializable]
    public class OTA_HotelCacheChangeReturnEntity:CtripBaseAPIReturnEntity
    {
        private List<HotelCacheChange> hotelCacheChangeList = new List<HotelCacheChange>();

        /// <summary>
        /// 存刷新信息列表
        /// </summary>
        public List<HotelCacheChange> HotelCacheChangeList
        {
            get
            {
                return this.hotelCacheChangeList;
            }
            set
            {
                this.hotelCacheChangeList = value;
            }
        }
    }
}
