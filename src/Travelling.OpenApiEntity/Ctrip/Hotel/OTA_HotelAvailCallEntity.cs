using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_HotelAvailCallEntity:CtripBaseAPICallEntity
    {
        private DateTime checkInTime;
        private DateTime checkOutTime;
        private int guestCount;
        private int hotelCode;
        private int? hotelRoomCode;
        private bool? isPerRoom;
        private DateTime lastCheckInTime;
        private int roomCount;
        private DateTime timeStamp;
        public OTA_HotelAvailCallEntity()
            : base("OTA_HotelAvail")
        {
            this.timeStamp = DateTime.Now;
            this.isPerRoom = false;
        }

        /// <summary>
        /// 入住日期；DateTime类型；必填
        /// </summary>
        public DateTime CheckInTime
        {
            get
            {
                return this.checkInTime;
            }
            set
            {
                this.checkInTime = value;
            }
        }

        /// <summary>
        /// 离店日期；DateTime类型；必填
        /// </summary>
        public DateTime CheckOutTime
        {
            get
            {
                return this.checkOutTime;
            }
            set
            {
                this.checkOutTime = value;
            }
        }

        /// <summary>
        /// 客人数量；int类型；必填
        /// </summary>
        public int GuestCount
        {
            get
            {
                return this.guestCount;
            }
            set
            {
                this.guestCount = value;
            }
        }

        /// <summary>
        /// 酒店代码
        /// </summary>
        public int HotelCode
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
        /// 酒店房间编码
        /// </summary>
        public int? HotelRoomCode
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
        /// 客人数量是否对应每间房，False 表示所有房间加起来一共住这么多客人；
        /// bool类型；可空
        /// </summary>
        public bool? IsPerRoom
        {
            get
            {
                return this.isPerRoom;
            }
            set
            {
                this.isPerRoom = value;
            }
        }

        /// <summary>
        /// 有可能最晚到店日期为第二天凌晨，格式为 yyyy-MM-dd hh:mm:ss，必填
        /// </summary>
        public DateTime LastCheckInTime
        {
            get
            {
                return this.lastCheckInTime;
            }
            set
            {
                this.lastCheckInTime = value;
            }
        }

        /// <summary>
        /// 将要预订的房间数量；int类型；必填
        /// </summary>
        public int RoomCount
        {
            get
            {
                return this.roomCount;
            }
            set
            {
                this.roomCount = value;
            }
        }

        /// <summary>
        /// 时间戳
        /// </summary>
        public DateTime TimeStamp
        {
            get
            {
                return this.timeStamp;
            }
            set
            {
                this.timeStamp = value;
            }
        }
    }
}
