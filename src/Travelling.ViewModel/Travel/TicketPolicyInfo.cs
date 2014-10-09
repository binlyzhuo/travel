using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 价格策略
    /// </summary>
    public class TicketPolicyInfo
    {
        /// <summary>
        /// 价格策略id
        /// </summary>
        public int PolicyId { set; get; }

        /// <summary>
        /// 价格策略名称
        /// </summary>
        public string PolicyName { set; get; }

        /// <summary>
        /// 门票说明
        /// </summary>
        public string Remark { set; get; }

        /// <summary>
        /// 门市价格
        /// </summary>
        public decimal price { set; get; }

        /// <summary>
        /// 同程价格
        /// </summary>
        public decimal tcPrice { set; get; }

        /// <summary>
        /// 支付方式
        /// </summary>
        public int pMode { set; get; }

        /// <summary>
        /// 取票方式
        /// </summary>
        public string gMode { set; get; }

        /// <summary>
        /// 最小票数
        /// </summary>
        public int minT { set; get; }

        /// <summary>
        /// 最大票数
        /// </summary>
        public int maxT { set; get; }

        /// <summary>
        /// 最大可用现金券
        /// </summary>
        public decimal dpPrize { set; get; }

        /// <summary>
        /// 预订跳转
        /// </summary>
        public string orderUrl { set; get; }

        /// <summary>
        /// 是否实名制 
        /// </summary>
        public int realName { set; get; }

        /// <summary>
        /// 是否使用二代身份证
        /// </summary>
        public int useCard { set; get; }

        /// <summary>
        /// 门票类型Id
        /// </summary>
        public int ticketId { set; get; }

        /// <summary>
        /// 门票类型名称
        /// </summary>
        public string ticketName { set; get; }

        /// <summary>
        /// 开始时间
        /// 格式：1900-00-00 0000:00:000
        /// </summary>
        public DateTime bDate { set; get; }

        /// <summary>
        /// 结束时间
        /// 格式：1900-00-00 0000:00:000
        /// </summary>
        public DateTime eDate { set; get; }

        /// <summary>
        /// 价格策略有效期类型
        /// 3-特殊日,2-按周,1-按月,0-普通
        /// </summary>
        public int openDateType { set; get; }

        /// <summary>
        /// 价格策略具体有效期
        /// 只针对按周或月有效(已去除前后逗号),
        ///poenDateType=3时 还是取 bDate-eDate
        /// </summary>
        public string openDateValue { set; get; }

        /// <summary>
        /// 价格策略里面的屏蔽节假日
        /// </summary>
        public string closeDate { set; get; }
    }
}
