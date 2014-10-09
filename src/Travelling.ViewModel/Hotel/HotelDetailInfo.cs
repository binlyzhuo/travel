using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.ViewModel.Dto.Hotel;

namespace Travelling.ViewModel.Hotel
{
    public class HotelDetailInfo
    {
        public HotelDescription HotelDescription { set; get; }

        public List<HotelServiceInfo> HotelServices { set; get; }

        public HotelPolicyInfo PolicyInfo { set; get; }

        public List<HotelMediaTextDescription> TextDescriptions { set; get; }

        public List<HotelMediaImgDescription> ImgDescriptions { set; get; }
    }
}
