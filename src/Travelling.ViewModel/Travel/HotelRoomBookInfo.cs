using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class HotelRoomBookInfo
    {
        public int HotelCode { set; get; }
        public int RoomTypeCode { set; get; }
        public DateTime InRoomDate { set; get; }
        public DateTime OffRoomDate { set; get; }
        public int RoomCount { set; get; }

        public List<string> Customers { set; get; }

        public string BeforeCheckInTime { set; get; }

        public string LastCheckInTime { set; get; }

        public string ContactName { set; get; }
        public string MobilePhone { set; get; }

        public string ContactEmail { set; get; }

        public decimal AmountBeforeTax { set; get; }

        public bool IsPerRoom { set; get; }


    }
}
