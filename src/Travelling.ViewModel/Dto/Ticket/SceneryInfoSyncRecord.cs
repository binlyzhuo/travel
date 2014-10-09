using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Dto.Ticket
{
    public class SceneryInfoSyncRecord
    {
        /// <summary>
        /// 景区ID,主键
        /// </summary>
        public int SceneryId
        {
            set;
            get;
        }
        /// <summary>
        /// 景区图片
        /// </summary>
        public string Imgs
        {
            set;
            get;
        }
        /// <summary>
        /// 景区名称
        /// </summary>
        public string SceneryName
        {
            set;
            get;
        }
        /// <summary>
        /// 景区地址
        /// </summary>
        public string SceneryAddress
        {
            set;
            get;
        }
        /// <summary>
        /// 景点简介
        /// </summary>
        public string ScenerySummary
        {
            set;
            get;
        }
        /// <summary>
        /// 景区省份ID
        /// </summary>
        public int ProvinceId
        {
            set;
            get;
        }
        /// <summary>
        /// 省份名称
        /// </summary>
        public string ProvinceName
        {
            set;
            get;
        }
        /// <summary>
        /// 城市ID
        /// </summary>
        public int CityId
        {
            set;
            get;
        }
        /// <summary>
        /// 城市名称
        /// </summary>
        public string CityName
        {
            set;
            get;
        }
        /// <summary>
        /// 可预订情况
        /// </summary>
        public int BookFlag
        {
            set;
            get;
        }
        /// <summary>
        /// 星级
        /// </summary>
        public string GradeId
        {
            set;
            get;
        }
        /// <summary>
        /// 纬度
        /// </summary>
        public string Lon
        {
            set;
            get;
        }
        /// <summary>
        /// 经度
        /// </summary>
        public string Lat
        {
            set;
            get;
        }
        /// <summary>
        /// 距离
        /// </summary>
        public decimal Distance
        {
            set;
            get;
        }
        /// <summary>
        /// 景区主题,分开
        /// </summary>
        public string Themes
        {
            set;
            get;
        }
        /// <summary>
        /// 适合人群,分开
        /// </summary>
        public string Suitherds
        {
            set;
            get;
        }
        /// <summary>
        /// 游客印象,分开
        /// </summary>
        public string Impressions
        {
            set;
            get;
        }
        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime AddTime
        {
            set;
            get;
        }
        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime UpdateTime
        {
            set;
            get;
        }
        /// <summary>
        /// 
        /// </summary>
        public string ImgBaseUrl
        {
            set;
            get;
        }
        /// <summary>
        /// 是否同步
        /// </summary>
        public int SyncState
        {
            set;
            get;
        }
        /// <summary>
        /// 价格计划是否同步
        /// </summary>
        public int PriceSyncState
        {
            set;
            get;
        }
        /// <summary>
        /// 县市ID
        /// </summary>
        public int CountyId
        {
            set;
            get;
        }
        /// <summary>
        /// 县市名称
        /// </summary>
        public string CountyName
        {
            set;
            get;
        }
        /// <summary>
        /// 用户点评个数
        /// </summary>
        public int CommentCount
        {
            set;
            get;
        }
        /// <summary>
        /// 问题个数
        /// </summary>
        public int QuestionCount
        {
            set;
            get;
        }
        /// <summary>
        /// 博客个数
        /// </summary>
        public int BlogCount
        {
            set;
            get;
        }
        /// <summary>
        /// 浏览次数
        /// </summary>
        public int ViewCount
        {
            set;
            get;
        }
        /// <summary>
        /// 景区门票价格
        /// </summary>
        public int SceneryAmount
        {
            set;
            get;
        }
        /// <summary>
        /// 同程优惠价格
        /// </summary>
        public int AdviceAmount
        {
            set;
            get;
        }
    }
}
