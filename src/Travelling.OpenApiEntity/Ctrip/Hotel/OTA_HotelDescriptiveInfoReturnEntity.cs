using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店静态信息返回实体
    /// </summary>
    public class OTA_HotelDescriptiveInfoReturnEntity : CtripBaseAPIReturnEntity
    {
        /// <summary>
        /// 酒店静态信息
        /// </summary>
        public List<HotelDescriptiveInfo> DescriptiveInfos { set; get; }
    }
}
