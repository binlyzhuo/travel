using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取价格搜索接口请求实体
    /// </summary>
    public class GetSceneryPriceCallEntity : TongChengBaseCallEntity
    {
        private int showDetail = 1;
        private string sceneryIds;
        private int useCache = 0;

        /// <summary>
        /// 1、	简单 2、详细,默认为1
        /// </summary>
        public int ShowDetail
        {
            get
            {
                return this.showDetail;
            }
        }

        /// <summary>
        /// 0:不使用1使用;默认为0
        /// </summary>
        public int UseCache
        {
            get
            {
                return this.useCache;
            }
        }

        /// <summary>
        /// 一次最多20个
        /// </summary>
        public string SceneryIds
        {
            get
            {
                return this.sceneryIds;
            }
        }

        public GetSceneryPriceCallEntity()
        {

        }

        public GetSceneryPriceCallEntity(List<int> sceneryIdList, int showDetail = 1, int useCache = 0)
        {
            this.useCache = useCache;
            this.showDetail = showDetail;
            this.sceneryIds = string.Join(",", sceneryIdList);
        }
    }
}
