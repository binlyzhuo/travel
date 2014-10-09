using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public class SceneryTicketPriceInfo
    {
        public int SceneryID { set; get; }
        public int PolicyID { set; get; }
        public string PolicyName { set; get; }
        public int TCPrice { set; get; }
        public int Price { set; get; }
        public int TicketId { set; get; }
        public string TicketName { set; get; }
        public DateTime BeginDate { set; get; }
        public DateTime EndDate { set; get; }
    }
}
