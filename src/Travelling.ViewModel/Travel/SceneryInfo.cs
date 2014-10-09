using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class SceneryInfo
    {
        public int SceneryID { set; get; }
        public string SceneryName { set;get; }
        public string GradeId { set; get; }
        public string Lon { set; get; }
        public string Lat { set; get; }
        public string ThemeName { set; get; }
        public string Imgs { set; get; }
        public string ImgBaseUrl { set; get; }

        public int AmountAdvice { set; get; }
    }
}
