using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class JsonLocalIPInfo
    {
        public int code { set; get; }
        public IPLocalDetailInfo data { set; get; }
    }

    public class IPLocalDetailInfo
    {
        public string country { set; get; }
        public string country_id { set; get; }
        public string area { set; get; }
        public string area_id { set; get; }
        public string region { set; get; }
        public string region_id { set; get; }
        public string city { set; get; }
        public string city_id { set; get; }
        public string county { set; get; }
        public string county_id { set; get; }
        public string isp { set; get; }
        public string isp_id { set; get; }
        public string ip { set; get; }
    }
}
