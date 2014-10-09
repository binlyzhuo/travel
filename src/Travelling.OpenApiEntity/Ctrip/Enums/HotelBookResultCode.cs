using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    public enum HotelBookResultCode
    {
        [Description("房型有误")]
        RatePlanNotExist=87,

        [Description("房型暂时不可预定")]
        RateplanNoAvaiableNow=365
    }
}
