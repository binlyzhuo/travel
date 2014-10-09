using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 景区门票价格信息
    /// </summary>
    public class SceneryPriceInfo
    {
        /// <summary>
        /// 景区Id
        /// </summary>
        public int SceneryId { set; get; }

        /// <summary>
        /// 价格列表
        /// </summary>
        public List<SceneryPolicy> Policies { set; get; }

        /// <summary>
        /// 购票须知列表
        /// </summary>
        public List<SceneryNotice> Notices { set; get; }

        /// <summary>
        /// 提前预订天数
        /// </summary>
        public int AheadDay { set; get; }

        /// <summary>
        /// 提前预订时间
        /// </summary>
        public string AheadTime { set; get; }
    }
}
