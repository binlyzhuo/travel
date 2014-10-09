using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    /// <summary>
    /// 价格计划类型代码
    /// </summary>
    public enum RateCategory
    {
        /// <summary>
        /// 促销
        /// </summary>
        Promotional = 14,

        /// <summary>
        /// 标准
        /// </summary>
        Standard = 16,

        /// <summary>
        /// 普通预付专用价格体系
        /// </summary>
        StandardPrepay = 501,

        /// <summary>
        /// 促销预付专用价格体系
        /// </summary>
        PromotionalPrepay = 502

    }
}
