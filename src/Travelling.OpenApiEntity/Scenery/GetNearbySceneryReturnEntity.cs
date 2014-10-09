using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取周边景点GetNearbyScenery
    /// </summary>
    public class GetNearbySceneryReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 周边热门景点列表
        /// </summary>
        public List<SceneryViewModel> SceneryList { set; get; }
    }
}
