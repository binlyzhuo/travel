using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class CityInfo
    {
        // Summary:
        //     城市名称
        public string CityName { get; set; }
        //
        // Summary:
        //     携程城市ID
        public int CtripCityID { get; set; }
        //

        //
        // Summary:
        //     是否展现
        public int IsShow { get; set; }
        //
        // Summary:
        //     排列序号
        public int Sort { get; set; }
        //
        // Summary:
        //     同程对应的CityID
        public int TCCityID { get; set; }
    }
    
        
}
