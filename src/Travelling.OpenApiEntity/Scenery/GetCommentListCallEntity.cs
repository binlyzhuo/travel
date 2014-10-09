using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取点评列表请求实体
    /// </summary>
    public class GetCommentListCallEntity : TongChengBaseCallEntity
    {
        /// <summary>
        /// 景区ID
        /// </summary>
        public int SceneryId { set; get; }
    }
}
