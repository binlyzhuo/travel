using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 酒店星级区间
    /// </summary>
    public enum HotelStarLevel
    {
        /// <summary>
        /// 不限
        /// </summary>
        [Description("不限")]
        All = 0,

        /// <summary>
        /// 五星级/豪华
        /// </summary>
        [Description("五星级/豪华")]
        Star5 = 5,

        /// <summary>
        /// 四星级/高档
        /// </summary>
        [Description("四星级/高档")]
        Star4 = 4,

        /// <summary>
        /// 三星级/舒适
        /// </summary>
        [Description("三星级/舒适")]
        Star3 = 3,

        /// <summary>
        /// 二星级以下/经济
        /// </summary>
        [Description("二星级以下/经济")]
        BelowStar2 = 2
    }
}
