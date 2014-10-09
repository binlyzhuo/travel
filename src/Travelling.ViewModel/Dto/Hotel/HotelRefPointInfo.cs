using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    /// <summary>
    /// 酒店热点区域
    /// </summary>
    public class HotelRefPointInfo
    {
        /// <summary>
        /// 主键
        /// </summary>
        public int ID
        {
            set;
            get;
        }
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelID
        {
            set;
            get;
        }
        /// <summary>
        /// 热点名称
        /// </summary>
        public string Name
        {
            set;
            get;
        }
        /// <summary>
        /// 热点类型名称
        /// </summary>
        public string RefPointName
        {
            set;
            get;
        }
        /// <summary>
        /// 描述信息
        /// </summary>
        public string DescriptiveText
        {
            set;
            get;
        }
        /// <summary>
        /// 距离
        /// </summary>
        public decimal Distance
        {
            set;
            get;
        }
        /// <summary>
        /// 距离单位
        /// </summary>
        public int UnitOfMeasureCode
        {
            set;
            get;
        }
        /// <summary>
        /// 热点类型
        /// </summary>
        public int RefPointCategoryCode
        {
            set;
            get;
        }
        /// <summary>
        /// 维度
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
        /// 添加时间
        /// </summary>
        public DateTime AddDate
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
    }
}
