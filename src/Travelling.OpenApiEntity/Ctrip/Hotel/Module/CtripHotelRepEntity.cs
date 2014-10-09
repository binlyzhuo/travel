using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    public class CtripHotelRepEntity
    {
        /// <summary>
        /// 酒店品牌
        /// </summary>
        public int BrandCode { set; get; }

        /// <summary>
        /// 酒店编码
        /// </summary>
        public int HotelCode { set; get; }

        /// <summary>
        /// 城市ID
        /// </summary>
        public int HotelCityCode { set; get; }

        /// <summary>
        /// 酒店名称
        /// </summary>
        public string HotelName { set; get; }

        /// <summary>
        /// 行政区域ID
        /// </summary>
        public int AreaID { set; get; }

        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelId { set; get; }

        /// <summary>
        /// 纬度
        /// </summary>
        public string Latitude { set; get; }

        /// <summary>
        /// 经度
        /// </summary>
        public string Longitude { set; get; }

        /// <summary>
        /// 坐标类型
        /// 501Mapbar 坐标，502Google 坐标，默认为502
        /// </summary>
        public string PositionTypeCode { set; get; }

        /// <summary>
        /// 地址
        /// </summary>
        public string AddressLine { set; get; }

        /// <summary>
        /// 城市名称
        /// </summary>
        public string CityName { set; get; }

        /// <summary>
        /// 邮编
        /// </summary>
        public string PostCode { set; get; }

        /// <summary>
        /// 酒店星级
        /// </summary>
        public decimal HotelStarRate { set; get; }

        /// <summary>
        /// 携程星级
        /// </summary>
        public decimal CtripStarRate { set; get; }

        /// <summary>
        /// 携程推荐星级
        /// </summary>
        public decimal CtripRecommendRate { set; get; }

        /// <summary>
        /// 携程综合星级
        /// </summary>
        public decimal CtripCommRate { set; get; }

        /// <summary>
        /// 酒店点评－周边环境分类评分
        /// </summary>
        public decimal CommSurroundingRate { set; get; }

        /// <summary>
        /// 酒店点评－设施设备分类评分
        /// </summary>
        public decimal CommFacilityRate { set; get; }

        /// <summary>
        /// 酒店点评－房间卫生分类评分
        /// </summary>
        public decimal CommCleanRate { set; get; }

        /// <summary>
        /// 酒店点评－酒店服务分类评分
        /// </summary>
        public decimal CommServiceRate { set; get; }

        /// <summary>
        /// 周边热门地标地理信息
        /// </summary>
        public List<RelativePosition> RelativePositions { set; get; }

        /// <summary>
        /// 酒店描述等供应商信息列表
        /// </summary>
        public List<VendorMessage> VendorMessages { set; get; }

        /// <summary>
        /// 酒店图片
        /// </summary>
        public string ImgText { set; get; }

        public List<ZoneTypeInfo> Zones { set; get; }


    }
}
