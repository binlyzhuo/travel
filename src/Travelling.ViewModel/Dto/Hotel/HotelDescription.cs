using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    public class HotelDescription
    {
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelID
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店行政区域ID
        /// </summary>
        public int AreaID
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店品牌
        /// </summary>
        public int BrandCode
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店编码
        /// </summary>
        public int HotelCode
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店所在城市ID
        /// </summary>
        public int HotelCityCode
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店名称
        /// </summary>
        public string HotelName
        {
            set;
            get;
        }
        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime WhenBuild
        {
            set;
            get;
        }
        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime LastUpdated
        {
            set;
            get;
        }
        /// <summary>
        /// 纬度
        /// </summary>
        public string Latitude
        {
            set;
            get;
        }
        /// <summary>
        /// 经度
        /// </summary>
        public string Longitude
        {
            set;
            get;
        }
        /// <summary>
        /// 地图类型
        /// </summary>
        public int PositionTypeCode
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店星级
        /// </summary>
        public decimal HotelStarRate
        {
            set;
            get;
        }
        /// <summary>
        /// 携程星级
        /// </summary>
        public decimal CtripStarRate
        {
            set;
            get;
        }
        /// <summary>
        /// 用户推荐级别
        /// </summary>
        public decimal CtripUserRate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店点评－综合评分
        /// </summary>
        public decimal CtripCommRate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店点评－周边环境分类评分
        /// </summary>
        public decimal CommSurroundingRate
        {
            set;
            get;
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal CommFacilityRate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店点评－房间卫生分类评分
        /// </summary>
        public decimal CommCleanRate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店点评－酒店服务分类评分
        /// </summary>
        public decimal CommServiceRate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店常用的酒店标签和分类
        /// </summary>
        public string SegmentCategory
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店地址
        /// </summary>
        public string AddressLine
        {
            set;
            get;
        }
        /// <summary>
        /// 邮编
        /// </summary>
        public string PostCode
        {
            set;
            get;
        }
        /// <summary>
        /// 城市名称
        /// </summary>
        public string CityName
        {
            set;
            get;
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime AddDate
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店描述信息
        /// </summary>
        public string Description
        {
            set;
            get;
        }
        
        /// <summary>
        /// 预定规则
        /// </summary>
        public string PolicyInfo
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店服务信息
        /// </summary>
        public string Services
        {
            set;
            get;
        }
        /// <summary>
        ///   酒店简介和预定地址
        /// </summary>
        public string TextItems
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店媒体信息
        /// </summary>
        public string MediaItems
        {
            set;
            get;
        }
        /// <summary>
        /// 行政区域名称
        /// </summary>
        public string AreaName
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店品牌名称
        /// </summary>
        public string BrandName
        {
            set;
            get;
        }
        /// <summary>
        /// 行政区域ID
        /// </summary>
        public int ZoneId
        {
            set;
            get;
        }
        /// <summary>
        /// 行政区域名称
        /// </summary>
        public string ZoneName
        {
            set;
            get;
        }
        /// <summary>
        /// 一句话介绍
        /// </summary>
        public string ShortDescription
        {
            set;
            get;
        }
        /// <summary>
        /// 简介
        /// </summary>
        public string Summary
        {
            set;
            get;
        }
        /// <summary>
        /// 官网页面
        /// </summary>
        public string PageOnOffice
        {
            set;
            get;
        }
        /// <summary>
        /// 同步状态
        /// </summary>
        public int SyncState
        {
            set;
            get;
        }

        public string HotelImg
        {
            set;
            get;
        }

        /// <summary>
        /// 
        /// </summary>
        public int IsIndex
        {
            set;
            get;
        }
    }
}
