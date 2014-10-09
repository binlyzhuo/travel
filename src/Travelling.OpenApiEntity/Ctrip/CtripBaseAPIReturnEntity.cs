using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip
{
    /// <summary>
    /// 携程返回基类
    /// </summary>
    public abstract class CtripBaseAPIReturnEntity
    {
        /// <summary>
        /// 请求验证结果
        /// </summary>
        public bool ValidateResult { set; get; }

        /// <summary>
        /// 描述信息
        /// </summary>
        public string ValidateResultMessage { set; get; }

        /// <summary>
        /// 接口返回信息
        /// </summary>

        public CtripApiReturnHeaderInfo HeaderInfo;

        

        /// <summary>
        /// 默认构造函数
        /// </summary>
        public CtripBaseAPIReturnEntity()
        {
            ValidateResult = true;
            HeaderInfo = new CtripApiReturnHeaderInfo();
        }

        /// <summary>
        /// 赋值
        /// </summary>
        /// <param name="headerInfo"></param>
        public void GetReturnHeaderInfo(CtripApiReturnHeaderInfo headerInfo)
        {
            HeaderInfo = headerInfo;
        }

        
    }
}
