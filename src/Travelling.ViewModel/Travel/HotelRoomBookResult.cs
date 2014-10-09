using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class HotelRoomBookResult
    {
        public string OrderSerial { set; get; }
        public string FailReason { set; get; }
        public bool Success { set; get; }
        public int Code { set; get; }
    }
}
