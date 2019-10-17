using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace FMATS.Employee
{
    public class MailClass
    {
        public static void SendMail(string subject, string body)
        {
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            SmtpServer.Port = 587;
            SmtpServer.EnableSsl = true;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.DeliveryFormat = SmtpDeliveryFormat.International;
            SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
            SmtpServer.Credentials = new System.Net.NetworkCredential("manesh561@gmail.com", "pa55worD@123$&");
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("manesh561@gmail.com");
            mail.To.Add("skonduru@careered.com");
            mail.Subject = subject;
            
            mail.Body = body;

            SmtpServer.Send(mail);
        }
    }
}