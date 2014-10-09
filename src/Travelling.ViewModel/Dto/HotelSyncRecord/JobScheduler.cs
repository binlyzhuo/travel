using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.HotelSyncRecord
{
    /// <summary>
    /// 定时任务
    /// </summary>
    public class JobScheduler
    {
        /// <summary>
        /// 主键
        /// </summary>
        public int ID
        {
            set;
            get;
        }
        /// <summary>
        /// 方法
        /// </summary>
        public string Method
        {
            set;
            get;
        }
        /// <summary>
        /// Cron表达式
        /// </summary>
        public string Cron
        {
            set;
            get;
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime AddDate
        {
            set;
            get;
        }
        /// <summary>
        /// 状态
        /// </summary>
        public int State
        {
            set;
            get;
        }


    }
}
