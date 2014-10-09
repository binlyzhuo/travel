using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 提交订单接口SubmitSceneryOrder请求实体
    /// </summary>
    public class SubmitSceneryOrderCallEntity : TongChengBaseCallEntity
    {
        public int SceneryId { set; get; }

        /// <summary>
        /// 预定人
        /// </summary>
        public string Man { set; get; }

        /// <summary>
        /// 预定人手机号码
        /// </summary>
        public string Mobile { set; get; }

        /// <summary>
        /// 预订人地址
        /// </summary>
        public string Address { set; get; }

        /// <summary>
        /// 预定人邮编
        /// </summary>
        public string PostCode { set; get; }

        /// <summary>
        /// 预定人电子邮件
        /// </summary>
        public string bEmail { set; get; }

        /// <summary>
        /// 取票人姓名
        /// </summary>
        public string tName { set; get; }

        /// <summary>
        /// 取票人手机
        /// </summary>
        public string tMobile { set; get; }

        /// <summary>
        /// 政策ID
        /// </summary>
        public string PolicyId { set; get; }

        /// <summary>
        /// 预订票数
        /// </summary>
        public int Tickets { set; get; }

        /// <summary>
        /// 旅游日期
        /// 格式:2012-07-19
        /// </summary>
        public DateTime TravelDate { set; get; }

        /// <summary>
        /// 预订人IP
        /// </summary>
        public string OrderIP { set; get; }

        /// <summary>
        /// 二代身份证
        /// 根据policyId系统进行判断电景点是否要否输入二代身份证，如需身份证的则必传。
        /// </summary>
        public string IdCard { set; get; }

        /// <summary>
        /// 其他游玩人信息
        /// 这一点需要注意,如果tickets=2,那么此节点下必须有两个gName节点,其一就是取票人
        /// </summary>
        public List<Guest> Guests { set; get; }
    }
}
