using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 景区信息
    /// </summary>
    public class SceneryViewModel
    {
        /// <summary>
        /// 景区名称
        /// </summary>
        public string SceneryName { set; get; }

        /// <summary>
        /// 图片地址
        /// </summary>
        public string ImgPath { set; get; }

        /// <summary>
        /// 景区ID
        /// </summary>
        public int SceneryId { set; get; }

        /// <summary>
        /// 景区地址
        /// </summary>
        public string SceneryAddress { set; get; }

        /// <summary>
        /// 景点简介
        /// </summary>
        public string ScenerySummary { set; get; }

        /// <summary>
        /// 省份ID
        /// </summary>
        public int ProvinceId { set; get; }

        /// <summary>
        /// 省份名称
        /// </summary>
        public string ProvinceName { set; get; }

        /// <summary>
        /// 城市ID
        /// </summary>
        public int CityId { set; get; }

        /// <summary>
        /// 城市名称
        /// </summary>
        public string CityName { set; get; }

        public int CountryID { set; get; }

        public string CountryName { set; get; }

        /// <summary>
        /// 点评数
        /// </summary>
        public int commentCount { set; get; }

        /// <summary>
        /// 问答数
        /// </summary>
        public int questionCount { set; get; }

        /// <summary>
        /// 博客数量
        /// </summary>
        public int blogCount { set; get; }

        /// <summary>
        /// 浏览次数
        /// </summary>
        public int viewCount { set; get; }

        /// <summary>
        /// 可预订情况
        /// </summary>
        public int BookFlag { set; get; }


        public int sceneryAmount { set; get; }

        public int adviceAmount { set; get; }

        /// <summary>
        /// 星级Id
        /// 如1,2,3,4,5，可传多个，以英文逗号隔开
        /// </summary>
        public string GradeId { set; get; }

        //public decimal amount { set; get; }

        //public decimal amountAdv { set; get; }

        /// <summary>
        /// 纬度
        /// 默认baidu
        /// </summary>
        public string Lon { set; get; }

        /// <summary>
        /// 经度
        /// 默认baidu
        /// </summary>
        public string Lat { set; get; }

        /// <summary>
        /// 距离
        /// </summary>
        public decimal Distance { set; get; }

        /// <summary>
        /// 景区主题
        /// </summary>
        public List<SceneryTheme> SceneryThemes { set; get; }

        /// <summary>
        /// 景区适合人群
        /// </summary>
        public List<Suitherd> Suitherds { set; get; }

        /// <summary>
        /// 有课印象
        /// </summary>
        public List<Impression> Impressions { set; get; }

        //扩展
        /// <summary>
        /// 景点简介
        /// </summary>
        public string intro { set; get; }

        /// <summary>
        /// 支付类型
        /// </summary>
        public string payMode { set; get; }

        /// <summary>
        /// 同程价
        /// 该景点的最低价格，可能是儿童价
        /// </summary>
        public decimal AmountAdvice { set; get; }

        /// <summary>
        /// 是否需要证件号
        /// 0-不需要
        /// 1-需要
        /// </summary>
        public int ifUseCard { set; get; }

        /// <summary>
        /// 购票需知
        /// </summary>
        public string buyNotice { set; get; }
    }
}
