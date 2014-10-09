using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 附属收费项目
    /// 费用列表：比如宽带费/加床费/加早餐费
    /// </summary>
    [Serializable]
    public class Pertain
    {
        private decimal amount;
        private string chargeUnit;
        private string code;
        private string currencyCode;
        private string description;

        /// <summary>
        /// 金额
        /// </summary>
        public decimal Amount
        {
            get
            {
                return this.amount;
            }
            set
            {
                this.amount = value;
            }
        }

        /// <summary>
        /// 扣款单位:如每房每晚/每人-
        /// </summary>
        public string ChargeUnit
        {
            get
            {
                return this.chargeUnit;
            }
            set
            {
                this.chargeUnit = value;
            }
        }

        /// <summary>
        /// 费用代码
        /// </summary>
        public string Code
        {
            get
            {
                return this.code;
            }
            set
            {
                this.code = value;
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
        /// 收费描述
        /// </summary>
        public string Description
        {
            get
            {
                return this.description;
            }
            set
            {
                this.description = value;
            }
        }
    }
}
