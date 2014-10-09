using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 根据景区Id查询景点周边热门景点列表请求实体
    /// </summary>
    public class GetNearbySceneryCallEntity : TongChengBaseCallEntity
    {
        private int page = 1;
        private int pageSize = 20;

        public int Page
        {
            get
            {
                return this.page;
            }
        }

        public int PageSize
        {
            get
            {
                return this.pageSize;
            }
        }

        public int SceneryId
        {
            get
            {
                return this.sceneryId;
            }
        }

        public GetNearbySceneryCallEntity()
        {
            page = 1;
            pageSize = 10;
        }

        public GetNearbySceneryCallEntity(int page, int pageSize)
        {
            this.page = page;
            this.pageSize = pageSize;
        }
        private int sceneryId;

        public GetNearbySceneryCallEntity(int sceneryId, int page, int pageSize)
            : this(page, pageSize)
        {
            this.sceneryId = sceneryId;
        }
    }
}
