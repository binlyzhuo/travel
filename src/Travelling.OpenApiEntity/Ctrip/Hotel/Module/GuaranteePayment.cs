using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 预存类支付：用于不可变担保制度：全额担保、一律担保和峰时担保。
    /// 这3种担保制度在预订时就可明确知道是否需要担保，
    /// 跟客人的入住行为无关。
    /// 分销商需要验证双方担保金额是否相符
    /// </summary>
    [Serializable]
    public class GuaranteePayment
    {
        private string description;
        private DateTime endTime;
        private decimal guaranteeAmount;
        private string guaranteeCode;
        private string guaranteeCurrencyCode;
        private DateTime startTime;

        /// <summary>
        /// 担保描述
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

        /// <summary>
        /// 过期时间
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
        /// 金额数值
        /// 需要担保的金额，担保金额＝对应日期的每日价总和
        /// </summary>
        public decimal GuaranteeAmount
        {
            get
            {
                return this.guaranteeAmount;
            }
            set
            {
                this.guaranteeAmount = value;
            }
        }

        /// <summary>
        /// 担保制度代码
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
        /// 币种
        /// </summary>
        public string GuaranteeCurrencyCode
        {
            get
            {
                return this.guaranteeCurrencyCode;
            }
            set
            {
                this.guaranteeCurrencyCode = value;
            }
        }

        /// <summary>
        /// 生效时间
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
    }
}
