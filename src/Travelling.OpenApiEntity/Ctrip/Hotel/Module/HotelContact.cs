using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip.Hotel.Module
{
    /// <summary>
    /// 联系方式
    /// </summary>
    public class HotelContact
    {
        private string phoneNumber;
        private string phoneTechType;

        /// <summary>
        /// PhoneNumber属性：电话号码
        /// </summary>
        public string PhoneNumber
        {
            get
            {
                return this.phoneNumber;
            }
            set
            {
                this.phoneNumber = value;
            }
        }

        /// <summary>
        /// PhoneTechType属性：电话类型，Data:电话Fax:传真；
        /// </summary>
        public string PhoneTechType
        {
            get
            {
                return this.phoneTechType;
            }
            set
            {
                this.phoneTechType = value;
            }
        }
    }
}
