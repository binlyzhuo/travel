using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Ticket
{
    public class SceneryImgInfo
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
        /// 景区ID
        /// </summary>
        public int SceneryID
        {
            set;
            get;
        }
        /// <summary>
        /// 图片根路径
        /// </summary>
        public string ImgBaseUrl
        {
            set;
            get;
        }
        /// <summary>
        /// 图片名称
        /// </summary>
        public string ImgUrl
        {
            set;
            get;
        }
        /// <summary>
        /// 图片大小信息
        /// </summary>
        public string SizeInfo
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
        /// 有效状态
        /// </summary>
        public int IsValid
        {
            set;
            get;
        }
    }
}
