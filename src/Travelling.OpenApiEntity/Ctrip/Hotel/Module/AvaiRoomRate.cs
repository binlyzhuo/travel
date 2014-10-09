using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 每日价
    /// </summary>
    [Serializable]
    public class AvaiRoomRate
    {
        private decimal amountBeforeTax;
        private string currencyCode;
        private DateTime effectiveDate;
        private DateTime expireDate;
        private string maxGuestApplicable;
        private List<Pertain> pertainList = new List<Pertain>();

        /// <summary>
        /// 不含税价格
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
        /// 有效时间
        /// </summary>
        public DateTime EffectiveDate
        {
            get
            {
                return this.effectiveDate;
            }
            set
            {
                this.effectiveDate = value;
            }
        }

        /// <summary>
        /// 过期时间
        /// </summary>
        public DateTime ExpireDate
        {
            get
            {
                return this.expireDate;
            }
            set
            {
                this.expireDate = value;
            }
        }

        /// <summary>
        /// 该价格对应入住人数，对应rateplan NumberOfGuests
        /// </summary>
        public string MaxGuestApplicable
        {
            get
            {
                return this.maxGuestApplicable;
            }
            set
            {
                this.maxGuestApplicable = value;
            }
        }

        /// <summary>
        /// 费用列表：比如宽带费/加床费/加早餐费
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
    }
}
