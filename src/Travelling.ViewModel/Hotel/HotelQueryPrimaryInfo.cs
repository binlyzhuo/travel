using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.ViewModel.Travel;

namespace Travelling.ViewModel.Hotel
{
    public class HotelQueryPrimaryInfo : HotelPrimaryInfo
    {
        public string Longitude { set; get; }

        public string Latitude { set; get; }

        public int ZoneId { set; get; }

        public string ZoneName { set; get; }

        public decimal HotelStarRate { set; get; }

        public decimal CtripStarRate { set; get; }
    }
}
