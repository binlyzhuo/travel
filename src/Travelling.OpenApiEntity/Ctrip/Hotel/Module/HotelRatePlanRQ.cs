using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 酒店价格计划查询
    /// </summary>
    [Serializable]
    public class HotelRatePlanRQ
    {
        private bool availRatesOnlyInd = true;
        private DateTime endDate;
        private int hotelCode;
        private DateTime startDate;

        public HotelRatePlanRQ()
        {
            this.availRatesOnlyInd = true;
            this.startDate = DateTime.Now;
            this.endDate = DateTime.Now.AddDays(1);
        }

        /// <summary>
        /// 只读取可用价格计划；bool类型，
        /// 如果为true，表示只读取能预订的酒店价格计划，
        /// 如果为false，表示显示所有的已激活的酒店的价格计划，
        /// 可能此酒店的价格计划不能预订；
        /// 可空
        /// </summary>
        public bool AvailRatesOnlyInd
        {
            get
            {
                return this.availRatesOnlyInd;
            }
            set
            {
                this.availRatesOnlyInd = value;
            }
        }

        /// <summary>
        /// 价格调整离店日期；datetime类型；必填
        /// </summary>
        public DateTime EndDate
        {
            get
            {
                return this.endDate;
            }
            set
            {
                this.endDate = value;
            }
        }

        /// <summary>
        /// 酒店代码；string类型；必填
        /// </summary>
        public int HotelCode
        {
            get
            {
                return this.hotelCode;
            }
            set
            {
                this.hotelCode = value;
            }
        }

        /// <summary>
        /// 价格调整入住日期；datetime类型；必填
        /// </summary>
        public DateTime StartDate
        {
            get
            {
                return this.startDate;
            }
            set
            {
                this.startDate = value;
            }
        }
    }
}
