using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 下单返回实体
    /// </summary>
    public class SubmitSceneryOrderReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 订单号
        /// </summary>
        public string SerialId { set; get; }

        /// <summary>
        /// 处理时长
        /// </summary>
        public string Mseconds { set; get; }
    }
}
