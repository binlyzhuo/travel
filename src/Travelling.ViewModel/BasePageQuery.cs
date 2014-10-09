using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel
{
    /// <summary>
    /// 分页查询基类
    /// </summary>
    public class BasePageQuery
    {
        private int page=1;
        private int size = 10;

        /// <summary>
        /// 构造函数
        /// </summary>
        public BasePageQuery()
        { }



        /// <summary>
        /// 页码
        /// </summary>
        public int PageIndex
        {
            set { this.page = value; }
            get { return this.page; }
        }

        /// <summary>
        /// 每页数据条数
        /// </summary>
        public int PageSize
        {
            get { return this.size; }
            set { this.size = value; }
        }
    }
}
