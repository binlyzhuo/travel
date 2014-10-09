using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 存刷新信息
    /// </summary>
    public class HotelCacheChange
    {
        private DateTime endTime;
        private string hotelCode;
        private string hotelRoomCode;
        private DateTime startTime;

        /// <summary>
        /// 结束时间
        /// </summary>
        public DateTime EndTime
        {
            get
            {
                return this.endTime;
            }
            set
            {
                this.endTime = value;
            }
        }

        /// <summary>
        /// 酒店代码
        /// </summary>
        public string HotelCode
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

        /// <summary>
        /// 发生变化的房型代码
        /// </summary>
        public string HotelRoomCode
        {
            get
            {
                return this.hotelRoomCode;
            }
            set
            {
                this.hotelRoomCode = value;
            }
        }

        /// <summary>
        /// 发生变化的价格计划代码
        /// </summary>
        public string RatePlanCode
        {
            get;
            set;
        }

        /// <summary>
        /// 开始时间
        /// </summary>
        public DateTime StartTime
        {
            get
            {
                return this.startTime;
            }
            set
            {
                this.startTime = value;
            }
        }
    }
}
