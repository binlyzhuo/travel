using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery.Module
{
    /// <summary>
    /// 图片尺寸
    /// 完整图片的地址按如下方式拼接而成
    /// imageUrl = imageBaseUrl + sizeCode + "/" + imagePath
    /// </summary>
    public class ImgSizeCode
    {
        public int Size { set; get; }
        public string SizeValue { set; get; }
        public string IsDefault { set; get; }
    }
}
