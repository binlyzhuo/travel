using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Enums;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;

namespace Travelling.OpenApiEntity.Ctrip.Hotel
{
    /// <summary>
    /// 酒店下单请求实体
    /// </summary>
    public class OTA_HotelResCallEntity:CtripBaseAPICallEntity
    {
        private decimal amountBeforeTax;
        private string beforeCheckInTime;
        private DateTime checkInTime;
        private DateTime checkOutTime;
        private string contactPersonFirstName;
        private string contactPersonLastName;
        private ContactType contactType;
        private string currencyCode;
        private DepositPayment deposit;
        private string email;
        private int guestCount;
        private int hotelCode;
        private int hotelRoomCode;
        private bool isPerRoom;
        private string lastCheckInTime;
        private List<string> personList;
        private string phoneNumber;
        private PhoneTechnologyType phoneTechType;
        private int roomCount;
        private List<string> specialDescription;
        private string arriveTime;

        /// <summary>
        /// 构造函数
        /// </summary>
        public OTA_HotelResCallEntity()
            : base("OTA_HotelRes")
        {
            this.TimeStamp = DateTime.Now;
            this.personList = new List<string>();
            this.phoneTechType = PhoneTechnologyType.Mobile;
            this.specialDescription = new List<string>();
            this.currencyCode = "CNY";
            this.contactType = Enums.ContactType.sms;
        }

        public string ArriveTime
        {
            get
            {
                return this.arriveTime;
            }
            set
            {
                this.arriveTime = value;
            }
        }

        /// <summary>
        /// 税前价格
        /// </summary>
        public decimal AmountBeforeTax
        {
            get
            {
                return this.amountBeforeTax;
            }
            set
            {
                this.amountBeforeTax = value;
            }
        }

        /// <summary>
        /// 入住人最早到店时间
        /// </summary>
        public string BeforeCheckInTime
        {
            get
            {
                return this.beforeCheckInTime;
            }
            set
            {
                this.beforeCheckInTime = value;
            }
        }

        /// <summary>
        /// 入住开始时间
        /// </summary>
        public DateTime CheckInTime
        {
            get
            {
                return this.checkInTime;
            }
            set
            {
                this.checkInTime = value;
            }
        }

        /// <summary>
        /// 离店时间
        /// </summary>
        public DateTime CheckOutTime
        {
            get
            {
                return this.checkOutTime;
            }
            set
            {
                this.checkOutTime = value;
            }
        }

        /// <summary>
        /// 联系人姓
        /// </summary>
        public string ContactPersonFirstName
        {
            get
            {
                return this.contactPersonFirstName;
            }
            set
            {
                this.contactPersonFirstName = value;
            }
        }

        /// <summary>
        /// 联系人名
        /// </summary>
        public string ContactPersonLastName
        {
            get
            {
                return this.contactPersonLastName;
            }
            set
            {
                this.contactPersonLastName = value;
            }
        }

        /// <summary>
        /// 联系类型
        /// ContactType属性：确认联系人方式，sms手机短消息确认，email电邮确认，fax传真确认，non无需确认；string类型；必填
        /// </summary>
        public ContactType ContactType
        {
            get
            {
                return this.contactType;
            }
            set
            {
                this.contactType = value;
            }
        }

        /// <summary>
        /// 币种
        /// </summary>
        public string CurrencyCode
        {
            get
            {
                return this.currencyCode;
            }
            set
            {
                this.currencyCode = value;
            }
        }

        /// <summary>
        /// 担保内容
        /// </summary>
        public DepositPayment Deposit
        {
            get
            {
                return this.deposit;
            }
            set
            {
                this.deposit = value;
            }
        }

        /// <summary>
        ///  电子邮箱
        /// </summary>
        public string Email
        {
            get
            {
                return this.email;
            }
            set
            {
                this.email = value;
            }
        }

        /// <summary>
        /// 客人数量
        /// </summary>
        public int GuestCount
        {
            get
            {
                return this.guestCount;
            }
            set
            {
                this.guestCount = value;
            }
        }

        /// <summary>
        /// 酒店ID
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
        /// 子房型ID
        /// </summary>
        public int HotelRoomCode
        {
            get
            {
                return this.hotelRoomCode;
            }
            set
            {
                this.hotelRoomCode = value;
            }
        }

        /// <summary>
        /// 客人数量是否对应每间房
        /// </summary>
        public bool IsPerRoom
        {
            get
            {
                return this.isPerRoom;
            }
            set
            {
                this.isPerRoom = value;
            }
        }

        /// <summary>
        /// 入住人最晚到店时间
        /// </summary>
        public string LastCheckInTime
        {
            get
            {
                return this.lastCheckInTime;
            }
            set
            {
                this.lastCheckInTime = value;
            }
        }

        /// <summary>
        /// 入住人列表
        /// </summary>
        public List<string> PersonList
        {
            get
            {
                return this.personList;
            }
            set
            {
                this.personList = value;
            }
        }

        /// <summary>
        /// 电话号码
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
        /// 电话类型
        /// </summary>
        public PhoneTechnologyType PhoneTechType
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

        /// <summary>
        /// 几间房
        /// </summary>
        public int RoomCount
        {
            get
            {
                return this.roomCount;
            }
            set
            {
                this.roomCount = value;
            }
        }

        /// <summary>
        /// 特别说明
        /// </summary>
        public List<string> SpecialDescription
        {
            get
            {
                return this.specialDescription;
            }
            set
            {
                this.specialDescription = value;
            }
        }

        /// <summary>
        /// 时间戳
        /// </summary>
        public DateTime TimeStamp
        {
            get;
            set;
        }

    }
}
