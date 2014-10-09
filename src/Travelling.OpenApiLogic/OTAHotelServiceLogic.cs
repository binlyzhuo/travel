using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Travelling.OpenApiEntity.Ctrip.Hotel;
using Travelling.OpenApiEntity.Ctrip.Hotel.Module;
using Travelling.OpenApiSDK;
using Travelling.CommonLibrary;
using Travelling.ViewModel.Travel;
using Travelling.OpenApiEntity.Ctrip.Enums;

namespace Travelling.OpenApiLogic
{
    /// <summary>
    /// 酒店接口业务处理
    /// </summary>
    public class OTAHotelServiceLogic
    {
        static CtripHotelOTAService hotelOTAService;

        /// <summary>
        /// 静态构造函数
        /// </summary>
        static OTAHotelServiceLogic()
        {
            hotelOTAService = new CtripHotelOTAService();
        }

        /// <summary>
        /// 测试
        /// </summary>
        /// <returns></returns>
        public static OTA_PingReturnEntity OTA_Ping()
        {
            OTA_PingCallEntity callEntity = new OTA_PingCallEntity();
            //callEntity.RequestType = "";
            callEntity.RequestContent = "<ns:OTA_PingRQ><ns:EchoData>阿什顿</ns:EchoData></ns:OTA_PingRQ>";
            return hotelOTAService.OTA_Ping(callEntity);
        }

        /// <summary>
        /// 酒店所在城市ID，酒店名称、酒店星级等查询酒店信息列表
        /// </summary>
        /// <param name="availableOnlyIndicator"></param>
        /// <param name="hotelCityID"></param>
        /// <returns></returns>
        public static OTA_HotelSearchReturnEntity OTA_HotelSearch(bool availableOnlyIndicator, int hotelCityID)
        {
            OTA_HotelSearchCallEntity callEntity = new OTA_HotelSearchCallEntity();
            callEntity.HotelCityCode = hotelCityID;
            callEntity.AvailableOnlyIndicator = availableOnlyIndicator;
            return hotelOTAService.OTA_HotelSearch(callEntity);
        }

        /// <summary>
        /// 酒店静态数据查询
        /// </summary>
        /// <returns></returns>
        public static OTA_HotelDescriptiveInfoReturnEntity OTA_HotelDescriptiveInfo(List<int> hotelIdList, bool sendHotelData = true, bool sendGuestRooms = true)
        {
            OTA_HotelDescriptiveInfoCallEntity callEntity = new OTA_HotelDescriptiveInfoCallEntity();

            var items = from it in hotelIdList
                        select new DescriptiveInfo()
                        {
                            HotelCode = it,
                            SendHotelData = sendHotelData,
                            SendMultimediaObjectsData = true,
                            SendRecreations = true,
                            SendGuestRooms = true,
                            SendContactInfoData = true,
                            SendAttractions = true
                        };
            callEntity.DescriptiveInfos = items.ToList();
            return hotelOTAService.OTA_HotelDescriptiveInfo(callEntity);
        }

        /// <summary>
        /// 获取酒店最低价格
        /// </summary>
        /// <param name="hotelIds"></param>
        public static OTA_HotelRatePlanReturnEntity GetHotelRoomPrice(List<int> hotelIds, bool availRatesOnlyInd, DateTime startDt, DateTime endDt)
        {
            OTA_HotelRatePlanCallEntity callEntity = new OTA_HotelRatePlanCallEntity();
            List<HotelRatePlanRQ> ratePlans = new List<HotelRatePlanRQ>();
            var items = from it in hotelIds
                        let ratePlan = new HotelRatePlanRQ() { AvailRatesOnlyInd = availRatesOnlyInd, StartDate = startDt, EndDate = endDt, HotelCode = it }
                        select ratePlan;

            callEntity.HotelRatePlanList = items.ToList();
            var rep = hotelOTAService.OTA_HotelRatePlan(callEntity);
            return rep;
        }

        /// <summary>
        /// 酒店价格计划获取
        /// </summary>
        /// <param name="hotelIds"></param>
        /// <param name="startDt"></param>
        /// <param name="endDt"></param>
        /// <param name="availRatesOnlyInd"></param>
        /// <returns></returns>
        public static OTA_HotelRatePlanReturnEntity OTA_HotelRatePlan(List<int> hotelIds, DateTime startDt, DateTime endDt, bool availRatesOnlyInd = true)
        {
            var items = from it in hotelIds
                        let ratePlan = new HotelRatePlanRQ() { AvailRatesOnlyInd = availRatesOnlyInd, StartDate = startDt, EndDate = endDt, HotelCode = it }
                        select ratePlan;
            OTA_HotelRatePlanCallEntity callEntity = new OTA_HotelRatePlanCallEntity();
            callEntity.HotelRatePlanList = items.ToList();
            var rep = hotelOTAService.OTA_HotelRatePlan(callEntity);
            return rep;

        }

        public static OTA_HotelCacheChangeReturnEntity OTA_HotelCacheChange(int cityID, int? hotelId, DateTime cacheTime)
        {
            OTA_HotelCacheChangeCallEntity callEntity = new OTA_HotelCacheChangeCallEntity();
            callEntity.HotelCityCode = cityID;
            callEntity.HotelCode = hotelId;
            callEntity.CacheFromTimestamp = cacheTime;
            var rep = hotelOTAService.OTA_HotelCacheChange(callEntity);
            return rep;
        }

        public static bool HotelRealTimeRoomRatePlanInfo(int hotelID, int roomTypeCode)
        {
            OTA_HotelRatePlanCallEntity callEntity = new OTA_HotelRatePlanCallEntity();
            var ratePlansRQ = new HotelRatePlanRQ();
            ratePlansRQ.AvailRatesOnlyInd = true;
            ratePlansRQ.HotelCode = hotelID;
            ratePlansRQ.StartDate = DateTime.Now.Date;
            callEntity.HotelRatePlanList = new List<HotelRatePlanRQ>() { ratePlansRQ };
            var rep = hotelOTAService.OTA_HotelRatePlan(callEntity);

            return true;
        }

        public static bool HotelRoomBookAvaible(int hotelId, int roomTypeCode, int roomCount, int guestCount, DateTime checkinTime, DateTime lastCheckInTime, bool? isPerRoom = null)
        {
            OTA_HotelAvailCallEntity callEntity = new OTA_HotelAvailCallEntity();
            callEntity.HotelCode = hotelId;
            callEntity.HotelRoomCode = roomTypeCode;
            callEntity.CheckInTime = checkinTime;
            callEntity.CheckOutTime = lastCheckInTime;
            callEntity.GuestCount = guestCount;
            callEntity.IsPerRoom = isPerRoom;
            callEntity.LastCheckInTime = checkinTime;
            callEntity.RoomCount = roomCount;

            var rep = hotelOTAService.OTA_HotelAvail(callEntity);
            return false;
        }

        public static OTA_HotelResReturnEntity BookHotelRoom(HotelRoomBookInfo bookInfo)
        {
            OTA_HotelResCallEntity callEntity = new OTA_HotelResCallEntity();
            var guests = bookInfo.Customers.Where(u =>
            {
                return !string.IsNullOrEmpty(u);
            }).ToList();
            callEntity.AmountBeforeTax = bookInfo.AmountBeforeTax;
            callEntity.BeforeCheckInTime = bookInfo.BeforeCheckInTime;
            callEntity.CheckInTime = bookInfo.InRoomDate;
            callEntity.CheckOutTime = bookInfo.OffRoomDate;

            callEntity.ContactPersonFirstName = bookInfo.ContactName;

            callEntity.ContactType = ContactType.sms;
            callEntity.Email = bookInfo.ContactEmail;
            callEntity.GuestCount = guests.Count;
            callEntity.HotelCode = bookInfo.HotelCode;
            callEntity.HotelRoomCode = bookInfo.RoomTypeCode;
            callEntity.IsPerRoom = bookInfo.IsPerRoom;
            callEntity.LastCheckInTime = bookInfo.LastCheckInTime;
            callEntity.PersonList = guests;
            callEntity.PhoneNumber = bookInfo.MobilePhone;
            callEntity.Email = bookInfo.ContactEmail;
            callEntity.RoomCount = bookInfo.RoomCount;
            callEntity.ArriveTime = bookInfo.InRoomDate.ToCtripTimeFormat();

            var rep = hotelOTAService.OTA_HotelRes(callEntity);

            return rep;
        }

        public static bool OTA_CancelHotelBookOrder(string orderserial)
        {
            OTA_CancelCallEntity callEntity = new OTA_CancelCallEntity() { ResIDValue = orderserial };
            var rep = hotelOTAService.HotelOrderCancel(callEntity);
            if (rep.IsSuccess == "true")
            {
                return true;
            }
            return false;
        }
    }
}
