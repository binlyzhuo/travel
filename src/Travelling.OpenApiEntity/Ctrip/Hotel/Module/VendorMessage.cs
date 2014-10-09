using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店描述等供应商信息
    /// </summary>
    public class VendorMessage
    {
        /// <summary>
        /// 信息类型
        /// 关联 travelling\src\Travelling\Travelling.ViewModel\CtripHotel\Enums\InformationType.cs
        /// </summary>
        public int InfoType { set; get; }

        /// <summary>
        /// 描述
        /// </summary>
        public string Paragraph { set; get; }
    }
}
