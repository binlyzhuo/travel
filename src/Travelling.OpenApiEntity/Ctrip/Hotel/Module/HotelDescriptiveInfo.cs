using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 携程酒店详细信息
    /// </summary>
    public class HotelDescriptiveInfo
    {
        /// <summary>
        /// 酒店行政区域ID
        /// </summary>
        public int AreaID { set; get; }

        /// <summary>
        /// 酒店品牌
        /// </summary>
        public int BrandCode { set; get; }

        /// <summary>
        /// 酒店编码
        /// </summary>
        public int HotelCode { set; get; }

        /// <summary>
        /// 酒店所在城市ID
        /// </summary>
        public int HotelCityCode { set; get; }

        /// <summary>
        /// 城市名称
        /// </summary>
        public string HotelCityName { set; get; }

        /// <summary>
        /// 酒店名称
        /// </summary>
        public string HotelName { set; get; }


        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelId { set; get; }

        /// <summary>
        /// 酒店地址
        /// </summary>
        public string Address { set; get; }

        /// <summary>
        /// 邮编
        /// </summary>
        public string PostCode { set; get; }

        /// <summary>
        /// 区域ID
        /// </summary>
        public int ZoneId { set; get; }

        /// <summary>
        /// 区域名称
        /// </summary>
        public string ZoneName { set; get; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime WhenBuild { set; get; }

        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime LastUpdated { set; get; }

        /// <summary>
        /// 段分类ID，参考CodeList (SEG)
        /// </summary>
        //public string SegmentCategory { set; get; }

        /// <summary>
        /// 纬度
        /// </summary>
        public string Latitude { set; get; }

        /// <summary>
        /// 经度
        /// </summary>
        public string Longitude { set; get; }

        /// <summary>
        /// 地图类型
        /// </summary>
        public string PositionTypeCode { set; get; }

        /// <summary>
        /// 酒店星级
        /// </summary>
        public decimal HotelStarRate { set; get; }

        /// <summary>
        /// 携程星级
        /// </summary>
        public decimal CtripStarRate { set; get; }

        /// <summary>
        /// 用户推荐级别
        /// </summary>
        public decimal CtripUserRate { set; get; }

        /// <summary>
        /// 酒店点评－综合评分
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
        /// 
        /// </summary>
        public decimal HotelStarLicence { set; get; }

        /// <summary>
        /// 行政区信息
        /// </summary>
        public List<AreaInfo> AreaInfoList { set; get; }

        /// <summary>
        /// 设备和服务信息列表
        /// </summary>
        public List<Facility> FacilityList = new List<Facility>();

        /// <summary>
        /// 酒店房间列表
        /// </summary>
        public List<HotelRoom> HotelRoomList = new List<HotelRoom>();

        /// <summary>
        /// 多媒体类图片信息列表
        /// </summary>
        public List<MultimediaImgDescription> MultimediaImgDescriptionList = new List<MultimediaImgDescription>();

        /// <summary>
        /// 酒店描述信息列表
        /// </summary>
        public List<MultimediaTextDescription> MultimediaTextDescriptionList = new List<MultimediaTextDescription>();

        /// <summary>
        /// 酒店常用的酒店标签和分类
        /// travelling\src\Travelling\Travelling.ViewModel\CtripHotel\Enums\SegmentCategoryCode.cs
        /// </summary>
        public List<string> SegmentCategoryList = new List<string>();

        /// <summary>
        /// 酒店附近热点
        /// </summary>
        public List<RelativePosition> RelativePositions { set; get; }

        /// <summary>
        /// 酒店预定注意事项
        /// </summary>
        public HotelPolicy PolicyInfo { set; get; }
    }
}
