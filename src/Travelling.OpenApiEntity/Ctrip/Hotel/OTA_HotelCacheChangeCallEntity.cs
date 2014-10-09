using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_HotelCacheChangeCallEntity:CtripBaseAPICallEntity
    {
        private DateTime cacheFromTimestamp;
        private int hotelCityCode;
        private int? hotelCode;

        /// <summary>
        /// 默认构造函数
        /// </summary>
        public OTA_HotelCacheChangeCallEntity()
            : base("OTA_HotelCacheChange")
        {
            this.cacheFromTimestamp = DateTime.Now;
        }

        /// <summary>
        /// 缓存最后刷新时间，是指这个时间到现在发生变化的酒店价格
        /// </summary>
        public DateTime CacheFromTimestamp
        {
            get
            {
                return this.cacheFromTimestamp;
            }
            set
            {
                this.cacheFromTimestamp = value;
            }
        }

        /// <summary>
        /// 城市ID
        /// </summary>
        public int HotelCityCode
        {
            get
            {
                return this.hotelCityCode;
            }
            set
            {
                this.hotelCityCode = value;
            }
        }

        /// <summary>
        /// 酒店ID
        /// </summary>
        public int? HotelCode
        {
            get
            {
                return this.hotelCode;
            }
            set
            {
                this.hotelCode = value;
            }
        }
    }
}
