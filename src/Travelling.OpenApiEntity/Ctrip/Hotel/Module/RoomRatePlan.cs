using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 子房型价格计划类
    /// </summary>
    [Serializable]
    public class RoomRatePlan
    {
        private string description;
        private int hotelRoomCode;
        private int ratePlanCategory;
        private int marketCode;
        private int isInstantConfirm;
        private List<RoomRate> roomRateList = new List<RoomRate>();
        private List<string> sellableProductList = new List<string>();

        /// <summary>
        /// 房型描述
        /// </summary>
        public string Description
        {
            get
            {
                return this.description;
            }
            set
            {
                this.description = value;
            }
        }

        /// <summary>
        /// 房型代码
        /// </summary>
        public int HotelRoomCode
        {
            get
            {
                return this.hotelRoomCode;
            }
            set
            {
                this.hotelRoomCode = value;
            }
        }

        /// <summary>
        /// 房型价格类型
        /// </summary>
        public int RatePlanCategory
        {
            get
            {
                return this.ratePlanCategory;
            }
            set
            {
                this.ratePlanCategory = value;
            }
        }

        /// <summary>
        /// 子房型价格列表
        /// </summary>
        public List<RoomRate> RoomRateList
        {
            get
            {
                return this.roomRateList;
            }
            set
            {
                this.roomRateList = value;
            }
        }

        /// <summary>
        /// 市场代码，参考CodeList (MKC)
        /// </summary>
        public int MarketCode
        {
            set
            {
                this.marketCode = value;
            }
            get
            {
                return this.marketCode;
            }
        }

        /// <summary>
        /// 用以明确这个价格施加于哪个基础房型
        /// </summary>
        public List<string> SellableProductList
        {
            get
            {
                return this.sellableProductList;
            }
            set
            {
                this.sellableProductList = value;
            }
        }

        
    }
}
