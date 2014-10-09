using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Travelling.OpenApiSDK
{
    public static class XmlExtends
    {
        public static XmlElement ToXmlElement(this XmlNode xmlNode)
        {
            return xmlNode as XmlElement;
        }

        public static string GetValue(this XmlNode node)
        {
            return null;
        }
    }
}
