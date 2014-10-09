using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Travelling.FrameWork
{
    /// <summary>
    /// 邮件发送
    /// </summary>
    public class EmailService
    {
        private static readonly string strSmtpServer;
        private static readonly int iSmtpPort;
        private static readonly string Password;
        private static readonly string strFrom;


        /// <summary>
        /// 构造函数
        /// </summary>
        static EmailService()
        {
            strSmtpServer = "smtp.163.com";
            iSmtpPort = 25;
            Password = "1qaz2wsx3edc";
            strFrom = "zhuo_in@163.com";
        }

        /// <summary>
        /// 发送邮件
        /// </summary>
        /// <param name="strto"></param>
        /// <param name="strSubject"></param>
        /// <param name="strBody"></param>
        /// <param name="strFileName"></param>
        /// <returns></returns>
        public static bool SendMail(string strto, string strSubject, string strBody, string strFileName)
        {
            MailAddress mailFrom = new MailAddress(strFrom);//设置发件人信箱,及显示名字 
            MailAddress mailTo = new MailAddress(strto);//设置收件人信箱,及显示名字 

            MailMessage oMail = new MailMessage(mailFrom, mailTo);//创建一个MailMessage对象 

            oMail.To.Add(mailTo);
            oMail.Subject = strSubject; //邮件标题 
            oMail.Body = strBody; //邮件内容 
            oMail.IsBodyHtml = true; //指定邮件格式,支持HTML格式 
            oMail.BodyEncoding = System.Text.Encoding.GetEncoding("GB2312");//邮件采用的编码 
            oMail.SubjectEncoding = System.Text.Encoding.GetEncoding("GB2312");//邮件采用的编码 
            oMail.Priority = MailPriority.High;//设置邮件的优先级为高 

            //添加附件
            if (strFileName != "" && strFileName != null)
            {
                Attachment data = new Attachment(strFileName);
                oMail.Attachments.Add(data);
            }

            SmtpClient client = new SmtpClient();//发送邮件服务器 
            client.Host = strSmtpServer; //指定邮件服务器 
            client.Port = iSmtpPort;//发送邮件服务器端口
            client.Timeout = 9999;//设置超时时间 
            client.UseDefaultCredentials = true;//设置为发送认证消息
            client.Credentials = new NetworkCredential(strFrom, Password);//指定服务器邮件,及密码 ,发邮件人的邮箱地址和密码
            client.Send(oMail); //发送邮件 

            mailFrom = null;//释放资源
            mailTo = null;
            client.Dispose();//释放资源
            oMail.Dispose(); //释放资源 
            return true;
            
        }
    }
}
