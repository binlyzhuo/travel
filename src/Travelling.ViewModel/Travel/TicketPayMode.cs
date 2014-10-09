using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.ViewModel.Travel
{
    public enum TicketPayMode
    {
        [Description("景区到付")]
        ToSceneryPay=0,

        [Description("在线支付")]
        OnlinePay=1,

        [Description("其他支付")]
        OtherPay=2
    }
}
