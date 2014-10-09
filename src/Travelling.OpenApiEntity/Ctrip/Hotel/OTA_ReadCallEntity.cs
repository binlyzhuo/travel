using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_ReadCallEntity:CtripBaseAPICallEntity
    {
        public OTA_ReadCallEntity()
            : base("OTA_Read")
        {
        
        }

        /// <summary>
        /// 订单号
        /// </summary>
        public string OrderSerial { set; get; }
    }
}
