using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 酒店价格信息
    /// </summary>
    public class HotelRoomRatePlanInfo
    {
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelID { set; get; }

        /// <summary>
        /// 房型名称
        /// </summary>
        public string RoomTypeName { set; get; }

        /// <summary>
        /// 房间类型
        /// </summary>
        public int RoomTypeCode { set; get; }

        /// <summary>
        /// 早餐
        /// </summary>
        public int NumberOfBreakfast { set; get; }

        /// <summary>
        /// 早餐
        /// </summary>
        public int Breakfast { set; get; }

        /// <summary>
        /// 床大小
        /// </summary>
        public decimal BedSize { set; get; }

        /// <summary>
        /// 床型编码
        /// </summary>
        public string BedTypeCode { set; get; }

        /// <summary>
        /// 价格
        /// </summary>
        public int AmountBeforeTax { set; get; }

        /// <summary>
        /// 取消金额
        /// </summary>
        public int CancelAmount { set; get; }

        /// <summary>
        /// 预定类型
        /// </summary>
        public int RatePlanCategory { set; get; }

        /// <summary>
        /// 开始时间
        /// </summary>
        public DateTime StartDate { set; get; }
    }
}
