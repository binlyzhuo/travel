using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 订单取消请求实体
    /// </summary>
    public class OTA_CancelCallEntity:CtripBaseAPICallEntity
    {
        /// <summary>
        /// 构造函数
        /// </summary>
        public OTA_CancelCallEntity()
            : base("OTA_Cancel")
        {
            this.TimeStamp = DateTime.Now;
        }

        /// <summary>
        /// 取消原因列表
        /// </summary>
        public List<string> ReasonList { get; set; }
        
        /// <summary>
        /// 订单确认号
        /// </summary>
        public string ResIDValue { get; set; }
        
        /// <summary>
        /// 时间戳
        /// </summary>
        public DateTime TimeStamp { get; set; }
    }
}
