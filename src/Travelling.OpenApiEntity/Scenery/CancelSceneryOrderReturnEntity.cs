using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 取消景区订单返回实体
    /// </summary>
    public class CancelSceneryOrderReturnEntity : TongChengBaseReturnEntity
    {
        /// <summary>
        /// 是否成功
        /// 0表示失败
        /// 1表示成功
        /// </summary>
        public string IsSuccess { set; get; }

        /// <summary>
        /// 取消失败原因
        /// </summary>
        public string ErrorMsg { set; get; }
    }
}
