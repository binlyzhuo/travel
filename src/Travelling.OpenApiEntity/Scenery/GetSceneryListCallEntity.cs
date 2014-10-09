using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 获取景点列表请求实体 
    /// </summary>
    public class GetSceneryListCallEntity : TongChengBaseCallEntity
    {
        private string clientIp;
        private int page;
        private int pageSize;
        private string cs = "";


        public GetSceneryListCallEntity()
        {
            this.clientIp = "127.0.0.1";
            this.page = 1;
            this.pageSize = 20;
        }

        /// <summary>
        /// 客户请求Ip
        /// </summary>
        public string ClientIp
        {
            get
            {
                return this.clientIp;
            }
            set
            {
                this.clientIp = value;
            }
        }

        /// <summary>
        /// 页码
        /// </summary>
        public int Page
        {
            get
            {
                return this.page;
            }
            set
            {
                this.page = value;
            }
        }

        /// <summary>
        /// 每页数据
        /// </summary>
        public int PageSize
        {
            set
            {
                this.pageSize = value;
            }
            get
            {
                return this.pageSize;
            }
        }

        /// <summary>
        /// 城市Id
        /// 根据城市Id查景点参数
        /// </summary>
        public int? CityId
        {
            set;
            get;
        }
        /// <summary>
        /// 排序类型
        /// 0-	点评由多到少
        /// 1-	景区级别
        /// 2-	同程推荐
        /// 3-	人气指数
        /// </summary>
        public int? SortType
        {
            set;
            get;
        }
        /// <summary>
        /// 搜索关键词
        /// 用于模糊搜索
        /// </summary>
        public string Keyword
        {
            set;
            get;
        }

        /// <summary>
        /// 搜索字段
        /// 当有keyword时必传入，多个用英文逗号隔开
        /// cityName:城市名称
        /// cityId:城市Id
        /// sceneryName:景点名称
        /// </summary>
        public string SearchFields
        {
            get;
            set;
        }

        /// <summary>
        /// 星级Id
        /// 如1,2,3,4,5，可传多个，以英文逗号隔开
        /// </summary>
        public string GradeId
        {
            get;
            set;
        }

        /// <summary>
        /// 主题Id
        /// 如1,2,3,4,5，可传多个，以英文逗号隔开
        /// </summary>
        public string ThemeId
        {
            get;
            set;
        }

        /// <summary>
        /// 价格范围
        /// 如0,50，表示0到50
        /// </summary>
        public string PriceRange
        {
            get;
            set;
        }


        /// <summary>
        /// 坐标系统
        /// 1.mapbar
        /// 2.百度；
        /// 不传默认为1
        /// </summary>
        public string CS
        {
            get
            {
                return this.cs;
            }
            set
            {
                this.cs = value;
            }
        }

        /// <summary>
        /// 纬度
        /// </summary>
        public string Latitude
        {
            get;
            set;
        }

        /// <summary>
        /// 经度
        /// </summary>
        public string Longitude
        {
            get;
            set;
        }

        /// <summary>
        /// 半径
        /// 有经纬度时必传,单位:米
        /// </summary>
        public string Radius
        {
            get;
            set;
        }

        /// <summary>
        /// 省份Id
        /// 根据省份查询
        /// </summary>
        public int? ProvinceId
        {
            get;
            set;
        }
    }
}
