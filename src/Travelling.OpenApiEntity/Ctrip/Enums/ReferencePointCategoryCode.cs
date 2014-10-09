using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Enums
{
    /// <summary>
    /// 地标类别代码
    /// </summary>
    public enum RefPointCategoryCode
    {
        [Description("火车站")]
        Trainstation = 2,

        [Description("机场")]
        Airport = 3,

        [Description("市中心")]
        Citycenter =4,

        [Description("景点")]
        Scenery = 102,

        [Description("工业区/开发区")]
        Corporation=6,

        /// <summary>
        /// 景点
        /// </summary>
        [Description("公园/游乐场/景点/景区")]
        Amusementpark=7,

        [Description("广场/绿地 ")]
        Arena=8,

        [Description("车站/码头/口岸")]
        Busstation=9,

        [Description("商业中心/知名餐饮")]
        Shoppingcenter=10,

        [Description("展馆/体育馆")]
        Sportsfacility=11,

        [Description("政府机关/学校/医院")]
        Educationalinstitution=12,

        [Description("路名/地标建筑")]
        Landmark=13,

        [Description("副中心")]
        SubCenter=14,

        [Description("休闲娱乐")]
        Pointofinteresting=17,

        [Description("地铁")]
        Subway=201



       
    }
}
