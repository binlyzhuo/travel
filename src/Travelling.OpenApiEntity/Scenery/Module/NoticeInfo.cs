using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 须知明细
    /// </summary>
    public class NoticeInfo
    {
        /// <summary>
        /// 须知排序
        /// </summary>
        public int Id { set; get; }

        /// <summary>
        /// 须知名称
        /// </summary>
        public string Name { set; get; }

        /// <summary>
        /// 须知内容
        /// </summary>
        public string Content { set; get; }
    }
}
