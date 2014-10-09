using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_HotelAvailReturnEntity:CtripBaseAPIReturnEntity
    {
        private string availabilityStatus;
        private string breakfast;
        private string currencyCode;
        private GuaranteePayment guarantee = new GuaranteePayment();
        private string hotelRoomCode;
        private string prepaidIndicator;
        private CancelPenalty punish = new CancelPenalty();
        private string ratePlanCode;
        private string ratePlanName;

        private List<AvaiRoomRate> roomRateList = new List<AvaiRoomRate>();
        private string roomTypeCode;
        private string roomTypeName;
        private string roomTypeDescriptiveText;
        private decimal totalAmountBeforeTax;

        /// <summary>
        /// 房价可用性，AvailableForSale:可预订,NoAvailable：不可预订
        /// </summary>
        public string AvailabilityStatus
        {
            get
            {
                return this.availabilityStatus;
            }
            set
            {
                this.availabilityStatus = value;
            }
        }

        /// <summary>
        /// 是否包含早餐
        /// </summary>
        public string Breakfast
        {
            get
            {
                return this.breakfast;
            }
            set
            {
                this.breakfast = value;
            }
        }

        /// <summary>
        /// 货币代码
        /// </summary>
        public string CurrencyCode
        {
            get
            {
                return this.currencyCode;
            }
            set
            {
                this.currencyCode = value;
            }
        }

        /// <summary>
        /// 酒店房间代码
        /// </summary>
        public string HotelRoomCode
        {
            get
            {
                return this.hotelRoomCode;
            }
            set
            {
                this.hotelRoomCode = value;
            }
        }

        /// <summary>
        /// 是否要求预付
        /// </summary>
        public string PrepaidIndicator
        {
            get
            {
                return this.prepaidIndicator;
            }
            set
            {
                this.prepaidIndicator = value;
            }
        }

        /// <summary>
        /// 价格计划代码
        /// </summary>
        public string RatePlanCode
        {
            get
            {
                return this.ratePlanCode;
            }
            set
            {
                this.ratePlanCode = value;
            }
        }

        /// <summary>
        /// 价格计划名称
        /// </summary>
        public string RatePlanName
        {
            get
            {
                return this.ratePlanName;
            }
            set
            {
                this.ratePlanName = value;
            }
        }

        /// <summary>
        /// 房型代码
        /// </summary>
        public string RoomTypeCode
        {
            get
            {
                return this.roomTypeCode;
            }
            set
            {
                this.roomTypeCode = value;
            }
        }

        /// <summary>
        /// 每日价格信息列表
        /// </summary>
        public List<AvaiRoomRate> RoomRateList
        {
            get
            {
                return this.roomRateList;
            }
            set
            {
                this.roomRateList = value;
            }
        }

        /// <summary>
        /// 房型名称
        /// </summary>
        public string RoomTypeName
        {
            get
            {
                return this.roomTypeName;
            }
            set
            {
                this.roomTypeName = value;
            }
        }

        /// <summary>
        /// 酒店房型描述信息
        /// </summary>
        public string RoomTypeDescriptiveText
        {
            set
            {
                this.roomTypeDescriptiveText = value;
            }
            get
            {
                return this.roomTypeDescriptiveText;
            }
        }

        /// <summary>
        /// 不含税价格
        /// 总价，分销商需要验证双方总价是否相符
        /// </summary>
        public decimal TotalAmountBeforeTax
        {
            get
            {
                return this.totalAmountBeforeTax;
            }
            set
            {
                this.totalAmountBeforeTax = value;
            }
        }

        /// <summary>
        /// 担保制度
        /// 预存类支付：用于不可变担保制度：全额担保、一律担保和峰时担保。
        /// 这3种担保制度在预订时就可明确知道是否需要担保，
        /// 跟客人的入住行为无关。分销商需要验证双方担保金额是否相符-
        /// </summary>
        public GuaranteePayment GuaranteePayment
        {
            get
            {
                return this.guarantee;
            }
            set
            {
                this.guarantee = value;
            }
        }

        /// <summary>
        /// 取消制度
        /// 入住时间段内的取消制度。
        /// 分销商需要验证双方取消制度是否相符
        /// </summary>
        public CancelPenalty CancelPenalty
        {
            get
            {
                return this.punish;
            }
            set
            {
                this.punish = value;
            }
        }
    }
}
