using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店价格计划查询实体
    /// </summary>
    public class OTA_HotelRatePlanCallEntity:CtripBaseAPICallEntity
    {
        private List<HotelRatePlanRQ> hotelRatePlanList;
        private DateTime timeStamp;

        /// <summary>
        /// 构造函数
        /// </summary>
        public OTA_HotelRatePlanCallEntity()
            : base("OTA_HotelRatePlan")
        {
            this.timeStamp = DateTime.Now;
            this.hotelRatePlanList = new List<HotelRatePlanRQ>();
            
        }

        /// <summary>
        /// 价格计划查询列表（价格计划对应Ctrip子房型）,
        /// 可罗列多个酒店进行查询
        /// </summary>
        public List<HotelRatePlanRQ> HotelRatePlanList
        {
            get
            {
                return this.hotelRatePlanList;
            }
            set
            {
                this.hotelRatePlanList = value;
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
