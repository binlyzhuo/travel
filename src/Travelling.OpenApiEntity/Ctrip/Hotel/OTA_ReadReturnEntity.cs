using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_ReadReturnEntity:CtripBaseAPIReturnEntity
    {
        public OTA_ReadReturnEntity()
        { }

        /// <summary>
        /// 酒店地址
        /// </summary>
        public string AddressLine { get; set; }
        
        /// <summary>
        /// 税前总价
        /// </summary>
        public decimal AmountBeforeTax { get; set; }
        
        /// <summary>
        /// 最早到店时间
        /// </summary>
        public DateTime BeforeCheckInTime { get; set; }
        
        /// <summary>
        /// 支付方式 FG/PP
        /// </summary>
        public string BillingCode { get; set; }
        
        /// <summary>
        /// 取消金额
        /// </summary>
        public decimal CancelAmount { get; set; }
        
        /// <summary>
        /// 取消金额币种
        /// </summary>
        public string CancelCurrencyCode { get; set; }
        
        /// <summary>
        /// 取消金额币种
        /// </summary>
        public DateTime CancelPenaltyEndTime { get; set; }

        /// <summary>
        /// 取消原因
        /// 参考CodeList(CXR)
        /// </summary>
        public string CancelReason { set; get; }

        /// <summary>
        /// 取消时间
        /// </summary>
        public string CancellationDate { set; get; }
        
        /// <summary>
        /// 取消开始时间
        /// </summary>
        public DateTime CancelPenaltyStartTime { get; set; }
        
        /// <summary>
        /// 入住开始时间
        /// </summary>
        public DateTime CheckInTime { get; set; }
        
        /// <summary>
        /// 离店时间
        /// </summary>
        public DateTime CheckOutTime { get; set; }
        
        /// <summary>
        /// 酒店所在城市
        /// </summary>
        public string CityName { get; set; }

        /// <summary>
        /// 联系人姓名
        /// </summary>
        public string ContactName { get; set; }
        
        /// <summary>
        /// 联系类型
        /// </summary>
        public string ContactType { get; set; }
        
        /// <summary>
        /// 预订创建时间
        /// </summary>
        public DateTime CreateDateTime { get; set; }
        
        /// <summary>
        /// 预订创建者ID
        /// </summary>
        public string CreatorID { get; set; }
        
        /// <summary>
        /// 币种
        /// </summary>
        public string CurrencyCode { get; set; }
        
        /// <summary>
        /// 日夜审结果,参考代码表DNA
        /// </summary>
        public string DayNightAudit { get; set; }
        
        /// <summary>
        /// 担保信息
        /// </summary>
        public DepositPaymentInfo DepositPayment { get; set; }
        
        /// <summary>
        /// 联系人电子邮箱
        /// </summary>
        public string Email { get; set; }
        
        /// <summary>
        /// 客人数量
        /// </summary>
        public string GuestCount { get; set; }
        
        /// <summary>
        /// 酒店ID
        /// </summary>
        public string HotelCode { get; set; }
        
        /// <summary>
        ///  联系方式列表
        /// </summary>
        public List<HotelContact> HotelContactList { get; set; }
        
        /// <summary>
        /// 子房型ID
        /// </summary>
        public string HotelRoomCode { get; set; }
        
        /// <summary>
        ///  客人数量是否对应每间房
        /// </summary>
        public string IsPerRoom { get; set; }
        
        /// <summary>
        /// 最晚到店时间
        /// </summary>
        public DateTime LastCheckInTime { get; set; }
        
        /// <summary>
        /// 上次修改源ID
        /// </summary>
        public string LastModifierID { get; set; }
        
        /// <summary>
        /// 上次修改时间
        /// </summary>
        public DateTime LastModifyDateTime { get; set; }
        
        /// <summary>
        /// 入住人姓名列表
        /// </summary>
        public List<string> Person { get; set; }
        
        /// <summary>
        ///  联系人电话
        /// </summary>
        public string PhoneNumber { get; set; }
        
        /// <summary>
        /// 联系人电话类型
        /// </summary>
        public string PhoneTechType { get; set; }
        
        /// <summary>
        /// 酒店邮政编码
        /// </summary>
        public string PostalCode { get; set; }
        
        /// <summary>
        /// 确认订单号类型
        /// 确认订单号类型，携程订单号（501）和酒店订单确认号（502）
        /// </summary>
        public string ResIDType { get; set; }
        
        /// <summary>
        /// 订单确认号
        /// </summary>
        public string ResIDValue { get; set; }
        
        /// <summary>
        /// 订单状态，比如成交、确认供应商等。参考代码表RVS
        /// </summary>
        public string ResStatus { get; set; }
        
        /// <summary>
        /// 基础房型ID
        /// </summary>
        public string RoomTypeCode { get; set; }
        
        /// <summary>
        /// 特别说明
        /// </summary>
        public List<string> SpecialDescription { get; set; }

        /// <summary>
        /// 订单大状态值
        /// </summary>
        public string OrderStatus { set; get; }

        /// <summary>
        /// 订几间房
        /// </summary>
        public int NumberOfUnits { set; get; }
    }
}
