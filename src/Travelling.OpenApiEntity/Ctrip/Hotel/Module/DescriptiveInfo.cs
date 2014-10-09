using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    public class DescriptiveInfo
    {
        private int? positionTypeCode = 502;
        private bool? sendHotelData = true;
        private bool? sendGuestRooms = true;
        private bool? sendAttractions = true;
        private bool? sendRecreations = true;
        private bool? sendContactInfoData = true;
        private bool? sendMultimediaObjectsData = true;
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelCode { set; get; }

        /// <summary>
        /// 返回的酒店的坐标类型，string类型，可空，
        /// 参见ListCode(PTC)，501Mapbar 坐标，502Google 坐标，默认为502
        /// </summary>
        public int? PositionTypeCode
        {
            get
            {
                return this.positionTypeCode;
            }
            set
            {
                this.positionTypeCode = value;
            }
        }

        /// <summary>
        /// 是否请求酒店类信息；bool类型，True表示需要发送酒店类信息；可空
        /// </summary>
        public bool? SendHotelData
        {
            get
            {
                return this.sendHotelData;
            }
            set
            {
                this.sendHotelData = value;
            }
        }

        /// <summary>
        /// 是否发送客房信息；bool类型，True表示需要发送；可空
        /// </summary>
        public bool? SendGuestRooms
        {
            set
            {
                this.sendGuestRooms = value;
            }
            get
            {
                return this.sendGuestRooms;
            }
        }

        /// <summary>
        /// 是否发送景点地标信息；bool类型，True表示需要发送；可空
        /// </summary>
        public bool? SendAttractions
        {
            get
            {
                return this.sendAttractions;
            }
            set
            {
                this.sendAttractions = true;
            }
        }

        /// <summary>
        /// 是否发送娱乐区域信息；bool类型，True表示需要发送；可空
        /// </summary>
        public bool? SendRecreations
        {
            get
            {
                return this.sendRecreations;
            }
            set
            {
                this.sendRecreations = value;
            }
        }

        /// <summary>
        /// 是否发送联系方式类数据，
        /// bool类型，True表示需要发送；可空
        /// </summary>
        public bool? SendContactInfoData
        {
            get
            {
                return this.sendContactInfoData;
            }
            set
            {
                this.sendContactInfoData = true;
            }
        }

        /// <summary>
        /// 是否发送多媒体数据，bool类型，True表示需要发送；可空
        /// </summary>
        public bool? SendMultimediaObjectsData
        {
            set
            {
                this.sendMultimediaObjectsData = value;
            }
            get
            {
                return this.sendMultimediaObjectsData;
            }
        }
    }
}
