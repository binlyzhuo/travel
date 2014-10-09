using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 取消景区订单请求实体
    /// </summary>
    public class CancelSceneryOrderCallEntity : TongChengBaseCallEntity
    {
        public string SerialId { set; get; }

        public string CancelReason { set; get; }
    }
}
