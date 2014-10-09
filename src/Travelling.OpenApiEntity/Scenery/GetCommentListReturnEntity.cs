using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    ///获取点评列表返回实体
    /// </summary>
    public class GetCommentListReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 点评列表
        /// </summary>
        public List<Comment> Comments { set; get; }
    }
}
