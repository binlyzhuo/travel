using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Ticket
{
    /// <summary>
    /// 景区热门省市信息
    /// </summary>
    public class SceneryHotProvince
    {
        /// <summary>
        /// 省份ID
        /// </summary>
        public int ProvinceID
        {
            set;
            get;
        }

        /// <summary>
        /// 省份名字
        /// </summary>
        public string ProvinceName
        {
            set;
            get;
        }
        /// <summary>
        /// 状态,0-未推荐，1-已推荐
        /// </summary>
        public int State
        {
            set;
            get;
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime AddDate
        {
            get;
            set;
        }
        /// <summary>
        /// 排序
        /// </summary>
        public int OrderNo
        {
            set;
            get;
        }
    }
}
