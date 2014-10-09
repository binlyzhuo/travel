using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    public class OTA_CancelReturnEntity:CtripBaseAPIReturnEntity
    {
        public OTA_CancelReturnEntity() { }

        /// <summary>
        /// 出错代码值
        /// </summary>
        public string ErrorCode { get; set; }
        
        /// <summary>
        /// 出错文字描述
        /// </summary>
        public string ErrorDescriptive { get; set; }
        
        /// <summary>
        /// 出错相关信息短描述
        /// </summary>
        public string ErrorShortText { get; set; }
        
        /// <summary>
        /// 出错代码类型
        /// </summary>
        public string ErrorType { get; set; }
        
        /// <summary>
        /// 是否成功取消
        /// </summary>
        public string IsSuccess { get; set; }
        
        /// <summary>
        /// 警告代码值
        /// </summary>
        public string WarningCode { get; set; }
        
        /// <summary>
        /// 警告文字描述
        /// </summary>
        public string WarningDescriptive { get; set; }
        
        /// <summary>
        /// 警告相关信息短描述
        /// </summary>
        public string WarningShortText { get; set; }
        
        /// <summary>
        /// 警告代码类型
        /// </summary>
        public string WarningType { get; set; }
    }
}
