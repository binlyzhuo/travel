using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Enums;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店查询 OTA_HotelSearch请求实体
    /// </summary>
    public class OTA_HotelSearchCallEntity : CtripBaseAPICallEntity
    {
        private bool availableOnlyIndicator = true;
        private int? hotelCityCode = null;
        private int? areaId = null;
        private string hotelName = "";
        private PositionType? positionTypeCode;
        private CtripHotelStarLevel? hotelStarLevel = null;



        /// <summary>
        /// 构造函数
        /// </summary>
        public OTA_HotelSearchCallEntity()
            : base("OTA_HotelSearch")
        {
            this.areaId = null;
            this.hotelCityCode = null;
            this.hotelName = "";
            this.hotelStarLevel = null;
            this.positionTypeCode = PositionType.Mapbar;
            this.availableOnlyIndicator = true;
        }

        /// <summary>
        /// bool类型。
        /// 国内酒店：true只返回可预订酒店；false返回所有已激活酒店, 可能此酒店不能预订；
        /// 海外酒店：ture过滤掉booking和agoda酒店；如果为false,不过滤
        /// 默认true
        /// </summary>
        public bool AvailableOnlyIndicator 
        { 
            get
            {
                return availableOnlyIndicator;
            }
            set 
            {
                this.availableOnlyIndicator = value;
            }
        }

        /// <summary>
        /// 城市ID ，int类型，可空
        /// </summary>
        public int? HotelCityCode 
        {  
            get
            {
                return this.hotelCityCode;
            }
            set
            {
                this.hotelCityCode = value;
            }
        }

        /// <summary>
        /// 行政区ID ，int类型，可空
        /// </summary>
        public int? AreaID 
        {
            get
            {
                return this.areaId;
            }
            set
            {
                this.areaId = value;
            }
        }

        /// <summary>
        /// 酒店名称
        /// </summary>
        public string HotelName
        { 
            get
            {
                return this.hotelName;
            }
            set
            {
                this.hotelName = value;
            }
        }

        /// <summary>
        /// 坐标类型,默认501，可空
        /// </summary>
        public PositionType? PositionTypeCode 
        { 
            set
            {
                this.positionTypeCode = value;
            }
            get
            {
                return this.positionTypeCode;
            }
        }

        /// <summary>
        /// 等级
        /// </summary>
        public CtripHotelStarLevel? HotelStarLevel 
        { 
           get
            {
                return this.hotelStarLevel;
            }
            set
            {
                this.hotelStarLevel = value;
            }
        }

        /// <summary>
        /// 星级分数
        /// </summary>
        public int? StarScore { set; get; }
    }
}
