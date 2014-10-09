using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    /// <summary>
    /// 床型
    /// </summary>
    public enum BedType
    {
        [Description("双床")]
        DoubleBed = 1,

        [Description("Futon")]
        Futon = 2,

        [Description("大床")]
        BigBed = 3,

        [Description("Murphy bed")]
        Murphybed = 4,

        [Description("Queen")]
        Queen = 5,

        [Description("Sofa bed")]
        Sofabed = 6,

        [Description("Tatami mats")]
        Tatamimats = 7,

        [Description("2张单人床")]
        TwoSingleBed = 8,

        [Description("单人床")]
        SingleBed = 9
    }
}
