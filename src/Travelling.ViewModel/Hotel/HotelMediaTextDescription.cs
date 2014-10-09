using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Hotel
{
    /// <summary>
    /// 酒店描述信息
    /// </summary>
    public class HotelMediaTextDescription
    {
        /// <summary>
        /// 类型
        /// </summary>
        public int Category { set; get; }

        /// <summary>
        /// 描述信息
        /// </summary>
        public string Text { set; get; }
    }
}
