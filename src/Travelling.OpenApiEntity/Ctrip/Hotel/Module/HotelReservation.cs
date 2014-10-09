using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店预订信息
    /// </summary>
    public class HotelReservation
    {
        public HotelReservation() { }

        /// <summary>
        /// 创建人ID
        /// </summary>
        public string CreatorID { get; set; }

        /// <summary>
        /// 日夜审结果
        /// </summary>
        public string DayNightAudit { get; set; }

        /// <summary>
        /// 订单列表
        /// </summary>
        public List<HotelReservationID> HotelReservationIDList { get; set; }

        /// <summary>
        /// 上次修改时间
        /// </summary>
        public DateTime LastModifyDateTime { get; set; }

        /// <summary>
        /// 订单状态,参考代码表RVS
        /// </summary>
        public string ResStatus { get; set; }
    }
}
