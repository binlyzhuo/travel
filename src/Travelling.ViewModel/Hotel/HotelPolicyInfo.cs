using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Hotel
{
    /// <summary>
    /// 酒店预定规则
    /// </summary>
    public class PolicyInfo
    {
        public string CheckInTime { set; get; }
        public string CheckOutTime { set; get; }
    }

    public class HotelPolicyInfo
    {
        public List<PolicyInfoCode> PolicyInfoCodes { set; get; }
        public PolicyInfo PolicyInfo { set; get; }
    }

    public class PolicyInfoCode
    {
        public string Code { set; get; }
        public List<Tuple<string, string>> Descriptions { set; get; }
    }
}
