using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class SceneryRecommendViewModel
    {
        public string SceneryName { set; get; }
        public int SceneryId { set; get; }
        public string ImgBaseUrl { set; get; }
        public string Imgs { set; get; }
        public int ProvinceId { set; get; }

        public int AmountAdvice { set; get; }

        public int ListAmount { set; get; }

        public string CityName { set; get; }
    }
}
