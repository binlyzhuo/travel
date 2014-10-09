using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取价格搜索接口返回实体
    /// </summary>
    public class GetSceneryPriceReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 景区门票价格信息列表
        /// </summary>
        public List<SceneryPriceInfo> SceneryPrices { set; get; }
    }
}
