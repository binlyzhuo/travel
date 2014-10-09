using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class HotelRoomPrimaryInfo
    {
        public int HotelCode { set; get; }

        public string HotelName { set; get; }
        public string Floor { set; get; }

        public string Facility { set; get; }

        public string RoomTypeName { set; get; }
        public int RoomTypeCode { set; get; }

        public DateTime StartTime { set; get; }

        
        public int NumberOfBreakfast { set; get; }

        public string Size { set; get; }

        public string BedTypeCode { set; get; }

        public int Quantity { set; get; }

        public decimal CancelAmount { set; get; }

        public int RoomSize { set; get; }

        public int NonSmoking { set; get; }

        public string AddressLine { set; get; }

        public decimal AmountBeforeTax { set; get; }
    }
}
