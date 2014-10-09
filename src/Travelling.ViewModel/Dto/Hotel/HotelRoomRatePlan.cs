using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    public class HotelRoomRatePlan
    {
        /// <summary>
        /// 
        /// </summary>
        public int ID
        {
            get;
            set;
        }
        /// <summary>
        /// 
        /// </summary>
        public int HotelId
        {
            get;
            set;
        }
        /// <summary>
        /// 
        /// </summary>
        public int RoomTypeCode
        {
            get;
            set;
        }
        /// <summary>
        /// 价格不含税价
        /// </summary>
        public decimal AmountBeforeTax
        {
            get;
            set;
        }
        /// <summary>
        /// 门市价格
        /// </summary>
        public decimal ListPrice
        {
            get;
            set;
        }
        /// <summary>
        /// 返券/返利金额
        /// </summary>
        public decimal BackAmount
        {
            get;
            set;
        }
        /// <summary>
        /// 活动代码，比如返利/反现等(RBP)
        /// </summary>
        public string BackCode
        {
            get;
            set;
        }
        /// <summary>
        /// 返券/返利币种
        /// </summary>
        public string BackCurrencyCode
        {
            get;
            set;
        }
        /// <summary>
        /// 活动描述
        /// </summary>
        public string BackDescription
        {
            get;
            set;
        }
        /// <summary>
        /// 是否含早餐
        /// </summary>
        public int Breakfast
        {
            get;
            set;
        }
        /// <summary>
        /// 早餐份数
        /// </summary>
        public int NumberOfBreakfast
        {
            get;
            set;
        }
        /// <summary>
        /// 取消金额
        /// </summary>
        public decimal? CancelAmount
        {
            get;
            set;
        }
        /// <summary>
        /// 取消金额币种
        /// </summary>
        public string CancelCurrencyCode
        {
            get;
            set;
        }
        /// <summary>
        /// 取消截止时间
        /// </summary>
        public DateTime? CancelPenaltyEndTime
        {
            get;
            set;
        }
        /// <summary>
        /// 取消开始时间
        /// </summary>
        public DateTime? CancelPenaltyStartTime
        {
            get;
            set;
        }
        /// <summary>
        /// 币种
        /// </summary>
        public string CurrencyCode
        {
            get;
            set;
        }
        /// <summary>
        /// 返现活动结束时间
        /// </summary>
        public DateTime EndPeriod
        {
            get;
            set;
        }
        /// <summary>
        /// 截至时间
        /// </summary>
        public DateTime EndTime
        {
            get;
            set;
        }
        /// <summary>
        /// 担保类型代码，参考CodeList(RGC)
        /// </summary>
        public string GuaranteeCode
        {
            get;
            set;
        }
        /// <summary>
        /// 在此时间之前不需要担保
        /// </summary>
        public DateTime HoldTime
        {
            get;
            set;
        }
        /// <summary>
        /// 此价格使用与几个客人/房间
        /// </summary>
        public int NumberOfGuests
        {
            get;
            set;
        }
        /// <summary>
        /// 返现活动名称
        /// </summary>
        public string ProgramName
        {
            get;
            set;
        }
        /// <summary>
        /// 返现活动开始时间
        /// </summary>
        public DateTime StartPeriod
        {
            get;
            set;
        }
        /// <summary>
        /// 价格开始时间
        /// </summary>
        public DateTime StartTime
        {
            get;
            set;
        }
        /// <summary>
        /// open可售状态，onrequest 房源紧张,close表示不可售
        /// </summary>
        public string Status
        {
            get;
            set;
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime AddDate
        {
            get;
            set;
        }
        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime UpdateTime
        {
            get;
            set;
        }
        /// <summary>
        /// 价格计划类型代码
        /// </summary>
        public int RatePlanCategory
        {
            get;
            set;
        }
        /// <summary>
        /// 市场代码
        /// </summary>
        public int MarketCode
        {
            get;
            set;
        }
        /// <summary>
        /// 是否立刻确认
        /// </summary>
        public int IsInstantConfirm
        {
            get;
            set;
        }
        /// <summary>
        /// 房间附属信息
        /// </summary>
        public string Pertain
        {
            get;
            set;
        }
        /// <summary>
        /// 同步状态
        /// </summary>
        public int SyncState
        {
            get;
            set;
        }
    }
}
