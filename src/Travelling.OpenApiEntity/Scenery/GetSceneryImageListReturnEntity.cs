using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Scenery.Module;

namespace Travelling.OpenApiEntity.Scenery
{
    /// <summary>
    /// 景区图片返回实体
    /// </summary>
    public class GetSceneryImageListReturnEntity : TongChengBaseReturnEntity
    {
        public List<string> ImgList { set; get; }
        public string imageBaseUrl { set; get; }

        /// <summary>
        /// 图片尺寸列表
        /// </summary>
        public List<ImgSizeCode> SizeCodeList { set; get; }

    }
}
