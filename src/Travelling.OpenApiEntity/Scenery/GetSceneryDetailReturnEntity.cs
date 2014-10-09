using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取景点详细信息返回实体
    /// </summary>
    public class GetSceneryDetailReturnEntity : TongChengBaseReturnEntity
    {
        public int sceneryId { set; get; }
        public string sceneryName { set; get; }
        public string grade { set; get; }
        public string address { set; get; }
        public int cityId { set; get; }

        public string cityName { set; get; }
        public int provinceId { set; get; }
        public string provinceName { set; get; }

        public string intro { set; get; }

        /// <summary>
        /// 支付类型
        /// </summary>
        public string payMode { set; get; }

        /// <summary>
        /// 同程价
        /// 该景点的最低价格，可能是儿童价
        /// </summary>
        public decimal amountAdvice { set; get; }

        /// <summary>
        /// 是否需要证件号
        /// 0-不需要
        /// 1-需要
        /// </summary>
        public int ifUseCard { set; get; }

        /// <summary>
        /// 购票需知
        /// </summary>
        public string buyNotice { set; get; }

        public string lon { set; get; }

        public string lat { set; get; }
    }
}
