using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店价格计划返回类
    /// </summary>
    [Serializable]
    public class HotelRatePlan
    {
        private int hotelCode;
        private List<RoomRatePlan> roomRatePlanList = new List<RoomRatePlan>();

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
        /// 子房型价格计划列表
        /// </summary>
        public List<RoomRatePlan> RoomRatePlanList
        {
            get
            {
                return this.roomRatePlanList;
            }
            set
            {
                this.roomRatePlanList = value;
            }
        }
    }
}
