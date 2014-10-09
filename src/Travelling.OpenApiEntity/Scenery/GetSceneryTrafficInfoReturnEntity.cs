using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Scenery
{
    public class GetSceneryTrafficInfoReturnEntity : TongChengBaseReturnEntity
    {
        public int sceneryId { set; get; }
        public string longitude { set; get; }
        public string latitude { set; get; }
        public string traffic { set; get; }
    }
}
