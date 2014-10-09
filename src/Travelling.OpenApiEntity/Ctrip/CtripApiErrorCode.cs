using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Travelling.OpenApiEntity.Ctrip
{
    /// <summary>
    /// 携程错误返回码
    /// </summary>
    public enum CtripApiErrorCode
    {
        /// <summary>
        /// API处理过程中系统错误
        /// </summary>
        [Description("API处理过程中系统错误")]
        SystemError = 100000,

        /// <summary>
        /// 请求Header节点错误
        /// </summary>
        [Description("请求Header节点错误")]
        InvalidHeadInformation = 100001,

        /// <summary>
        /// 时间戳超时
        /// </summary>
        [Description("时间戳超时")]
        Timestampistimeout = 100002,

        /// <summary>
        /// 请求类型错误
        /// </summary>
        [Description("请求类型错误")]
        RequestTypeerror = 100003,

        /// <summary>
        /// 解析请求URL错误
        /// </summary>
        [Description("解析请求URL错误")]
        AbsolutePatherror = 100004,

        /// <summary>
        /// 签名错误
        /// </summary>
        [Description("签名错误")]
        InvalidSignatrue = 100005,

        /// <summary>
        /// 无效请求
        /// </summary>
        [Description("无效请求")]
        InvalidRequest = 100006,

        [Description("无效SID或者AllianceID，客户端未传入参数或者参数值不正确")]
        InvalidSIdOrAllianceId = 100006,

        /// <summary>
        /// 无效联盟站点，SID或者AllianceID未注册
        /// </summary>
        [Description("无效联盟站点，SID或者AllianceID未注册")]
        InvalidAlliance = 100006,

        /// <summary>
        /// 请求被拒绝，联盟站点已被列入黑名单
        /// </summary>
        [Description("请求被拒绝，联盟站点已被列入黑名单")]
        RequestRejected = 100006,

        /// <summary>
        /// 无效IP地址，客户端IP地址未注册。
        /// </summary>
        [Description("无效IP地址，客户端IP地址未注册。")]
        InvalidIP = 100006,

        /// <summary>
        /// 无权限访问
        /// </summary>
        [Description("无权限访问")]
        PermissionDenied = 100006,

        /// <summary>
        /// 超出调用频率限制
        /// </summary>
        [Description("超出调用频率限制")]
        RateLimit = 100006,

        /// <summary>
        /// 请求XML序列化失败
        /// </summary>
        [Description("请求XML序列化失败")]
        FormatXMLDeSerializeFail = 100007,

        /// <summary>
        /// 请求XML未正确包含业务请求XML，或业务请求XML同请求类型不符合
        /// </summary>
        [Description("请求XML未正确包含业务请求XML，或业务请求XML同请求类型不符合")]
        MissingRequestBody = 100008
    }
}
