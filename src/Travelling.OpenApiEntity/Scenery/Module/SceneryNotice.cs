using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 景区购票须知
    /// </summary>
    public class SceneryNotice
    {
        /// <summary>
        /// 类型
        /// </summary>
        public int TypeId { set; get; }

        /// <summary>
        /// 类型名称
        /// </summary>
        public string TypeName { set; get; }

        /// <summary>
        /// 须知列表
        /// </summary>
        public List<NoticeInfo> Infos { set; get; }

    }
}
