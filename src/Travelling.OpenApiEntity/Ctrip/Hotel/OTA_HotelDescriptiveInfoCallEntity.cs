using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店详细描述信息请求实体
    /// </summary>
    public class OTA_HotelDescriptiveInfoCallEntity : CtripBaseAPICallEntity
    {
        public OTA_HotelDescriptiveInfoCallEntity()
            : base("OTA_HotelDescriptiveInfo")
        {
            this.descriptiveInfos = new List<DescriptiveInfo>();
        }

        private List<DescriptiveInfo> descriptiveInfos;

        /// <summary>
        /// 酒店详细描述信息请求列表，可以请求多个酒店
        /// </summary>
        public List<DescriptiveInfo> DescriptiveInfos
        {
            get
            {
                return this.descriptiveInfos;
            }
            set
            {
                this.descriptiveInfos = value;
            }
        }
    }
}
