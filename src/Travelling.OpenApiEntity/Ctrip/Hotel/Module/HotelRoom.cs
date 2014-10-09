using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店房间信息
    /// </summary>
    public class HotelRoom
    {
        /// <summary>
        /// 房间类型名称
        /// </summary>
        public string RoomTypeName { set; get; }

        /// <summary>
        /// 标准入住人数
        /// </summary>
        public int StandardOccupancy { set; get; }

        /// <summary>
        /// 床的尺寸
        /// </summary>
        public string Size { set; get; }

        /// <summary>
        /// 房型代码，对应Ctrip基础房型
        /// </summary>
        public int RoomTypeCode { set; get; }

        /// <summary>
        /// 客房在建筑的第几层
        /// </summary>
        public string Floor { set; get; }

        /// <summary>
        /// 床型代码，参考CodeList(BED)
        /// travelling\src\Travelling\Travelling.ViewModel\CtripHotel\Enums\BedType.cs
        /// </summary>
        public string BedTypeCode { set; get; }

        /// <summary>
        /// 房间数量
        /// </summary>
        public int Quantity { set; get; }

        /// <summary>
        /// 房间设施列表
        /// </summary>
        public List<RoomFacility> Amenities { set; get; }

        /// <summary>
        /// 房型描述信息
        /// </summary>
        public string DescriptiveText { set; get; }

        /// <summary>
        /// 是否可预定
        /// </summary>
        public bool EnableBooking { set; get; }

        /// <summary>
        /// 待定
        /// </summary>
        public int InvBlockCode { set; get; }

        /// <summary>
        /// 禁止吸烟
        /// </summary>
        public int NonSmoking { set; get; }

        /// <summary>
        /// 房间大小
        /// </summary>
        public int RoomSize { set; get; }
    }
}
