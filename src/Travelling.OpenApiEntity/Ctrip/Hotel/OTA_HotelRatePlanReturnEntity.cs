using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店价格计划返回实体
    /// </summary>
    public class OTA_HotelRatePlanReturnEntity:CtripBaseAPIReturnEntity
    {
        private List<HotelRatePlan> hotelRatePlanList = new List<HotelRatePlan>();

        /// <summary>
        /// 酒店价格计划列表
        /// </summary>
        public List<HotelRatePlan> HotelRatePlanList
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
    }
}
