using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 住时间段内的取消制度。
    /// 分销商需要验证双方取消制度是否相符
    /// </summary>
    [Serializable]
    public class CancelPenalty
    {
        private decimal amountPercent;
        private string currencyCode;
        private DateTime endTime;
        private DateTime startTime;
        private string guaranteeCode;

        /// <summary>
        /// 取消罚金，金额应该等于担保金额
        /// </summary>
        public decimal AmountPercent
        {
            get
            {
                return this.amountPercent;
            }
            set
            {
                this.amountPercent = value;
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
        /// 结束时间
        /// 表示在这个时间段取消是需要扣除罚金
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
        /// 开始时间
        /// start表示了最迟的取消时间，在这个时间前取消不需要扣除罚金
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
        /// 担保制度代码
        /// </summary>
        public string GuaranteeCode
        {
            set
            {
                this.guaranteeCode = value;
            }
            get
            {
                return this.guaranteeCode;
            }
        }

        /// <summary>
        /// 描述
        /// </summary>
        public string Description
        {
            get;
            set;
        }
    }
}
