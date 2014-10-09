using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取景点列表返回实体
    /// </summary>
    public class GetSceneryListReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 图片URL前缀
        /// </summary>
        public string imgbaseURL { set; get; }

        /// <summary>
        /// 景区列表
        /// </summary>
        public List<SceneryViewModel> SceneryList { set; get; }
    }
}
