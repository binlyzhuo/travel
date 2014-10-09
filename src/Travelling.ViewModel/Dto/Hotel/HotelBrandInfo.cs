using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    /// <summary>
    /// 酒店品牌信息
    /// </summary>
    public class HotelBrandInfo
    {
        public int BrandID { set; get; }
        public string BrandName { set; get; }

        public string BrandEName { set; get; }

        public string Description { set; get; }

        public string ImgUrl { set; get; }
    }
}
