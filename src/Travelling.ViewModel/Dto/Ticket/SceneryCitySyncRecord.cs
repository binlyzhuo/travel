using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Ticket
{
    /// <summary>
    /// 景区城市同步信息
    /// </summary>
    public class SceneryCitySyncRecord
    {
        /// <summary>
        /// 城市ID
        /// </summary>
        public int CityID
        {
            set;
            get;
        }
        /// <summary>
        /// 同步状态
        /// </summary>
        public int SyncState
        {
            set;
            get;
        }
        /// <summary>
        /// 上传同步时间
        /// </summary>
        public DateTime LastSyncDate
        {
            set;
            get;
        }
        /// <summary>
        /// 景区个数
        /// </summary>
        public int SceneryCount
        {
            set;
            get;
        }
    }
}
