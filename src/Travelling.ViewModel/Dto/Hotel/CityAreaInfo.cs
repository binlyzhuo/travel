using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Hotel
{
    public class CityAreaInfo
    {
        /// <summary>
        ///  主键
        /// </summary>
        public int ID
        {
            get;
            set;
        }
        /// <summary>
        /// 距离
        /// </summary>
        public decimal Distance
        {
            get;
            set;
        }
        /// <summary>
        /// 距离单位,km
        /// </summary>
        public int UnitOfMeasureCode
        {
            get;
            set;
        }
        /// <summary>
        /// 名字
        /// </summary>
        public string Name
        {
            get;
            set;
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime AddDate
        {
            get;
            set;
        }
        /// <summary>
        /// 类型
        /// </summary>
        public int TypeCode
        {
            get;
            set;
        }
        /// <summary>
        /// 酒店ID
        /// </summary>
        public int HotelID
        {
            get;
            set;
        }
        /// <summary>
        /// 城市ID
        /// </summary>
        public int CityID
        {
            get;
            set;
        }
    }
}
