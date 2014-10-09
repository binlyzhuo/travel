using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip
{
    /// <summary>
    /// 携程接口返回信息
    /// </summary>
    public class CtripApiReturnHeaderInfo
    {
        private string timeStamp;
        private string referenceID;
        private string resultCode;
        private string resultNo;
        private string resultMsg;

        public CtripApiReturnHeaderInfo()
        { }

        public CtripApiReturnHeaderInfo(string refId, string resultCode, string resultNo, string resultMsg, string timeStamp)
        {
            this.referenceID = refId;
            this.resultCode = resultCode;

            this.timeStamp = timeStamp;
            this.resultNo = resultNo;
            this.resultMsg = resultMsg;
        }

        /// <summary>
        /// 是否记录执行时间
        /// </summary>
        public string ShouldRecordPerformanceTime { set; get; }

        /// <summary>
        /// 生成响应的时间
        /// </summary>
        public string Timestamp 
        { 
            get
            {
                return this.timeStamp;
            }
        }

        /// <summary>
        /// 唯一追踪编号
        /// </summary>
        public string ReferenceID 
        { 
            get
            {
                return this.referenceID;
            }
        }

        /// <summary>
        /// 最近时间
        /// </summary>
        public string RecentlyTime{set;get;}

        /// <summary>
        /// 总数量
        /// </summary>
        public int AccessCount { set; get; }

        /// <summary>
        /// 当前数量
        /// </summary>
        public int CurrentCount { set; get; }

        /// <summary>
        /// 重置时间
        /// </summary>
        public string ResetTime { set; get; }

        public string ResultCode
        { 
            get
            {
                return this.resultCode;
            }
        }

        /// <summary>
        /// 错误编码
        /// </summary>
        public string ResultNo 
        { 
            get
            {
                return this.resultNo;
            }
        }
    }
}
