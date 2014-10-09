using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 价格计划
    /// </summary>
    [Serializable]
    public class RoomRate
    {
        private decimal amountBeforeTax;
        private decimal backAmount;
        private string backCode;
        private string backCurrencyCode;
        private string backDescription;
        private string breakfast;
        private int numberOfBreakfast;
        private decimal cancelAmount;
        private string cancelCurrencyCode;
        private DateTime cancelPenaltyEndTime;
        private DateTime cancelPenaltyStartTime;
        private string currencyCode;
        private DateTime endPeriod;
        private DateTime endTime;
        private string guaranteeCode;
        private string holdTime;
        private int numberOfGuests;
        private List<Pertain> pertainList = new List<Pertain>();
        private string programName;
        private DateTime startPeriod;
        private DateTime startTime;
        private string status;
        private decimal listPrice;
        private int isInstantConfirm = 0;

        /// <summary>
        /// 价格不含税价
        /// </summary>
        public decimal AmountBeforeTax
        {
            get
            {
                return this.amountBeforeTax;
            }
            set
            {
                this.amountBeforeTax = value;
            }
        }

        /// <summary>
        /// 门市价格
        /// </summary>
        public decimal ListPrice
        {
            get
            {
                return this.listPrice;
            }
            set
            {
                this.listPrice = value;
            }
        }

        /// <summary>
        /// 返券/返利金额
        /// </summary>
        public decimal BackAmount
        {
            get
            {
                return this.backAmount;
            }
            set
            {
                this.backAmount = value;
            }
        }

        /// <summary>
        /// 活动代码，比如返利/反现等(RBP)
        /// </summary>
        public string BackCode
        {
            get
            {
                return this.backCode;
            }
            set
            {
                this.backCode = value;
            }
        }

        /// <summary>
        /// 返券/返利币种
        /// </summary>
        public string BackCurrencyCode
        {
            get
            {
                return this.backCurrencyCode;
            }
            set
            {
                this.backCurrencyCode = value;
            }
        }

        /// <summary>
        /// 活动描述
        /// </summary>
        public string BackDescription
        {
            get
            {
                return this.backDescription;
            }
            set
            {
                this.backDescription = value;
            }
        }

        /// <summary>
        /// 是否含早餐
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
        /// 早餐份数
        /// </summary>
        public int NumberOfBreakfast
        {
            get
            {
                return this.numberOfBreakfast;
            }
            set
            {
                this.numberOfBreakfast = value;
            }
        }

        /// <summary>
        /// 取消金额
        /// </summary>
        public decimal CancelAmount
        {
            get
            {
                return this.cancelAmount;
            }
            set
            {
                this.cancelAmount = value;
            }
        }

        /// <summary>
        ///  取消金额币种
        /// </summary>
        public string CancelCurrencyCode
        {
            get
            {
                return this.cancelCurrencyCode;
            }
            set
            {
                this.cancelCurrencyCode = value;
            }
        }

        /// <summary>
        /// 取消截止时间
        /// </summary>
        public DateTime CancelPenaltyEndTime
        {
            get
            {
                return this.cancelPenaltyEndTime;
            }
            set
            {
                this.cancelPenaltyEndTime = value;
            }
        }

        /// <summary>
        /// 取消开始时间
        /// </summary>
        public DateTime CancelPenaltyStartTime
        {
            get
            {
                return this.cancelPenaltyStartTime;
            }
            set
            {
                this.cancelPenaltyStartTime = value;
            }
        }

        /// <summary>
        /// 币种
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
        /// 返现活动结束时间
        /// </summary>
        public DateTime EndPeriod
        {
            get
            {
                return this.endPeriod;
            }
            set
            {
                this.endPeriod = value;
            }
        }

        /// <summary>
        /// 截止时间
        /// </summary>
        public DateTime EndTime
        {
            get
            {
                return this.endTime;
            }
            set
            {
                this.endTime = value;
            }
        }

        /// <summary>
        /// 担保类型代码，参考CodeList(RGC)
        /// </summary>
        public string GuaranteeCode
        {
            get
            {
                return this.guaranteeCode;
            }
            set
            {
                this.guaranteeCode = value;
            }
        }

        /// <summary>
        /// 在此时间之前不需要担保
        /// </summary>
        public string HoldTime
        {
            get
            {
                return this.holdTime;
            }
            set
            {
                this.holdTime = value;
            }
        }

        /// <summary>
        /// 此价格使用与几个客人/房间
        /// </summary>
        public int NumberOfGuests
        {
            get
            {
                return this.numberOfGuests;
            }
            set
            {
                this.numberOfGuests = value;
            }
        }

        /// <summary>
        /// 附属项
        /// </summary>
        public List<Pertain> PertainList
        {
            get
            {
                return this.pertainList;
            }
            set
            {
                this.pertainList = value;
            }
        }

        /// <summary>
        /// 返现活动名称
        /// </summary>
        public string ProgramName
        {
            get
            {
                return this.programName;
            }
            set
            {
                this.programName = value;
            }
        }

        /// <summary>
        /// 返现活动开始时间
        /// </summary>
        public DateTime StartPeriod
        {
            get
            {
                return this.startPeriod;
            }
            set
            {
                this.startPeriod = value;
            }
        }

        /// <summary>
        /// 价格开始时间
        /// </summary>
        public DateTime StartTime
        {
            get
            {
                return this.startTime;
            }
            set
            {
                this.startTime = value;
            }
        }

        /// <summary>
        /// open可售状态，onrequest 房源紧张,close表示不可售
        /// </summary>
        public string Status
        {
            get
            {
                return this.status;
            }
            set
            {
                this.status = value;
            }
        }

        public int RoomCode
        {
            get;
            set;
        }

        public int IsInstantConfirm
        {
            get
            {
                return this.isInstantConfirm;
            }
            set
            {
                this.isInstantConfirm = value;
            }
        }
    }
}
