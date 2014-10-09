using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 订单信息类
    /// </summary>
    [Serializable]
    public class HotelReservationID
    {
        public HotelReservationID() { }

        /// <summary>
        /// 确认号类型
        /// </summary>
        public string ResIDType { get; set; }

        /// <summary>
        /// 订单确认号
        /// </summary>
        public string ResIDValue { get; set; }
    }
}
