using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Web;


namespace FMATS.Webhelper
{
    /// <summary>
    /// created Static class to send Email from this servioce
    /// </summary>
    public static class Sendmail
    {
     public static bool SendEmailByMailMessage(MailMessage message,string email)
        {
            bool Result = false;
            try
            {
                #region formatter
                string text = string.Format("Please click on this link to {0}: {1}", message.Subject, message.Body);
                string html = message.Body;

                #endregion

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("sri8977@gmail.com");
                msg.To.Add(new MailAddress(email));
                msg.Subject = message.Subject;
                msg.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(text, null, MediaTypeNames.Text.Plain));
                msg.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(html, null, MediaTypeNames.Text.Html));

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", Convert.ToInt32(587));
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("sri8977@gmail.com ", "99666897360");
                smtpClient.Credentials = credentials;
                smtpClient.EnableSsl = true;
                smtpClient.Send(msg);
                Result = true;
            }
            catch(Exception ex)
            {
                Result = false;
            }
            return Result;
        }
    }
}