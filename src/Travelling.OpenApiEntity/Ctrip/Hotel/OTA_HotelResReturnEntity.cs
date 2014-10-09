using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店下单返回实体
    /// </summary>
    public class OTA_HotelResReturnEntity:CtripBaseAPICallEntity
    {
        /// <summary>
        /// 默认构造函数
        /// </summary>
        public OTA_HotelResReturnEntity()
        { }
        /// <summary>
        /// 税后总价
        /// </summary>
        public decimal AmountAfterTax { get; set; }
        
        /// <summary>
        /// 取消金额
        /// </summary>
        public decimal CancelAmount { get; set; }
        
        /// <summary>
        /// 取消金额币种
        /// </summary>
        public string CancelCurrencyCode { get; set; }
        
        /// <summary>
        /// 取消截止时间
        /// </summary>
        public DateTime CancelPenaltyEndTime { get; set; }
       
        /// <summary>
        /// 取消开始时间
        /// </summary>
        public DateTime CancelPenaltyStartTime { get; set; }
        
        /// <summary>
        /// 订单生成时间
        /// </summary>
        public DateTime CreateDateTime { get; set; }
        
        /// <summary>
        /// 币种
        /// </summary>
        public string CurrencyCode { get; set; }
        
        /// <summary>
        /// 担保金额
        /// </summary>
        public decimal GuaranteeAmount { get; set; }
        
        /// <summary>
        /// 担保制度代码
        /// </summary>
        public string GuaranteeCode { get; set; }
        
        /// <summary>
        /// 担保币种
        /// </summary>
        public string GuaranteeCurrencyCode { get; set; }

        /// <summary>
        /// 酒店ID
        /// </summary>
        public string HotelCode { get; set; }
        
        /// <summary>
        /// 房型ID
        /// </summary>
        public string HotelRoomCode { get; set; }
        
        /// <summary>
        /// 确认订单号类型
        /// </summary>
        public string ResIDType { get; set; }

        /// <summary>
        /// 订单确认号
        /// </summary>
        public string ResIDValue { get; set; }
        
        /// <summary>
        /// 订单状态
        /// </summary>
        public string ResStatus { get; set; }

        /// <summary>
        /// 价格计划代码
        /// </summary>
        public string RatePlanCode { set; get; }

        /// <summary>
        /// 下单失败信息
        /// </summary>
        public ErrorInfo Error { set; get; } 
    }
}
