using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Ticket
{
    /// <summary>
    /// 景区主要信息
    /// </summary>
    public class SceneryTicketPrimaryInfo
    {
        /// <summary>
        /// 景区名称
        /// </summary>
        public string SceneryName { set; get; }

        /// <summary>
        /// 景区ID
        /// </summary>
        public int SceneryId { set; get; }

        /// <summary>
        /// 图片地址
        /// </summary>
        public string ImgBaseUrl { set;get;}

        /// <summary>
        /// 图片名称
        /// </summary>
        public string Imgs { set; get; }

        /// <summary>
        /// 省份ID
        /// </summary>
        public int ProvinceId { set; get; }

        /// <summary>
        /// 门票价格
        /// </summary>
        public string AmountAdvice { set; get; }
    }
}
