using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 客户点评
    /// </summary>
    public class Comment
    {
        /// <summary>
        /// 评价
        /// 1.好评,2.中评,3.差评
        /// </summary>
        public string OverallRating { set; get; }
        public string Content { set; get; }
        public DateTime CreateDate { set; get; }
    }
}
