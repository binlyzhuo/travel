using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 同程接口返回实体基类
    /// </summary>
    public class TongChengBaseReturnEntity
    {
        /// <summary>
        /// 操作类型
        /// </summary>
        private int actionCode;

        /// <summary>
        /// 操作类型
        /// </summary>
        public int ActionCode
        {
            get
            {
                return this.actionCode;
            }
        }

        /// <summary>
        /// 返回类型
        /// </summary>
        private int rspType;

        /// <summary>
        /// 返回类型
        /// </summary>
        public int RspType
        {
            get
            {
                return this.rspType;
            }
        }

        /// <summary>
        /// 返回状态码
        /// </summary>
        private string rspCode;

        /// <summary>
        /// 返回状态码
        /// </summary>
        public string RspCode
        {
            get
            {
                return this.rspCode;
            }
            set
            {
                this.rspCode = value;
            }
        }

        /// <summary>
        /// 描述信息
        /// </summary>
        private string rspDesc;

        public string RspDesc
        {
            get
            {
                return this.rspDesc;
            }
        }

        /// <summary>
        /// 时间
        /// </summary>
        private DateTime rspTime;

        /// <summary>
        /// 时间
        /// </summary>
        public DateTime RspTime
        {
            get
            {
                return this.rspTime;
            }
        }

        public TongChengBaseReturnEntity()
        { }

        public TongChengBaseReturnEntity(int actionCode, int rspType, string rspCode, string rspDesc, DateTime rspTime)
        {
            this.rspCode = rspCode;
            this.rspDesc = rspDesc;
            this.rspTime = rspTime;
            this.rspType = rspType;
            this.actionCode = actionCode;
        }

        /// <summary>
        /// 返回Xml
        /// </summary>
        public XmlDocument RepXmlContent { set; get; }

        public int page { set; get; }

        public int pageSize { set; get; }

        public int totalPage { set; get; }

        public int totalCount { set; get; }
    }
}
