using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FMATS.Models;
using FMATS.Webhelper;
using System.Net.Mail;

namespace FMATS
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

        }
        /// <summary>
        /// Forgot pssword buttion clcik
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    // Validate the user's email address
                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    ApplicationUser user = manager.FindByName(txtemail.Value);
                    if (user == null || !manager.IsEmailConfirmed(user.Id))
                    {
                        FailureText.Text = "The user either does not exist or is not confirmed.";
                        ErrorMessage.Visible = true;
                        return;
                    }
                    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                    // Send email with the code and the redirect to reset password page
                    string code = manager.GeneratePasswordResetToken(user.Id);
                    string callbackUrl = IdentityHelper.GetResetPasswordRedirectUrl(code, Request, user.Id);
                    //Here we can send Email thorugh SendGridMessage() service but its a paid version.
                    //   manager.SendEmail(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                    MailMessage message = new MailMessage();
                    var Mailaddress = new MailAddressCollection();
                    Mailaddress.Add(user.Email);
                    message.Subject = "ForGot Password";
                    // message.Body = "<img src='http://evolutyz.com/wp-content/themes/evolutyz/images/logo-evolutyz.png' width='150' height='90' alt='' />" + " <br />  Hi " + user.Email+ " <br />  Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>.";
                    // var mes= "<table width = '/600px/' align ='/center/' cellpadding ='5px' border ='0' cellspacing='0' style ='border:1px solid #dcdcdc;margin-top:20px;border-radius:3px;vertical-align:middle;display:block;font-family:helvetica;font-size:16px;font-style:normal'><tbody><tr><td><p><img alt = '' src = 'http://evolutyz.com/wp-content/themes/evolutyz/images/logo-evolutyz.png' style = 'width:80%;height:100px;margin-bottom:30px' class='CToWUd'></p></td><td style = 'text-align:right;padding:10px 5px;padding-left: 450px;color:#808080;font-family:helvetica;font-size:10px;line-height:125%' ><h1><span class='il'>Evolutyz</span>Crop</h1></td></tr><tr><td style='padding-left: 80px;' ><div style = 'text-align:justify'> Hi  <a href = 'mailto:" + user.Email + "' target= '_blank' > " + user.Email + " </a></div><div style = 'text-align:justify'></div></td></tr><tr><td>Please reset your password by clicking below link<div><a style = 'margin-top:10px;text-decoration:none;color:#ffffff;padding:10px 16px;font-weight:bold;margin-right:10px;text-align:center;display:inline-block;background-color:#666666' href='" + callbackUrl + "' target='_blank' >Reset</a></div></td></tr><tr><td><div style = 'text-align:justify' ></div><div><p> Thanks & Regards,</p></div><div><span class='il'>Evolutyz</span>Team</div></td></tr></tbody></table>";
                    var mes = @"<body><div style='width:100%;height:100%;margin:10px auto;padding:0;background-color:#ffffff;font-family:Arial,Tahoma,Verdana,sans-serif;font-weight:299px;font-size:13px;text-align:center' bgcolor='#ffffff'><table width='100%' cellspacing='0' cellpadding='0' style='max-width:600px'><tbody><tr><td width='10' bgcolor='#027cd5' style='width:10px;background-color:wheat'>&nbsp;</td><td valign='middle' align='left' height='50' bgcolor='white' style='background-color:wheat;padding:0;margin:0'><a style='text-decoration:none;outline:none;color:#ffffff;font-size:13px' href='http://evolutyz.com/' target='_blank'><img border='0' height='30' src='http://evolutyz.com/wp-content/themes/evolutyz/images/logo-evolutyz.png' alt='Evolutyz.com' style='border:none'></a></td></tr></tbody></table><table width='100%' cellspacing='0' cellpadding='0' style='max-width:600px;border-left:solid 1px #e6e6e6;border-right:solid 1px #e6e6e6'> <tbody><tr> <td align='left' valign='top' style='color:#2c2c2c;display:block;font-weight:300;margin:0 auto;clear:both;border-bottom:1px solid #e6e6e6;background-color:#f9f9f9;padding:20px' bgcolor='#F9F9F9'> <p style='padding:0;margin:0;font-size:16px;font-size:13px'> Hi " + user.UserName+" </p><br><p style='padding:0;margin:0;color:#565656;font-size:13px'>Greetings!</p><br> <p style='padding:0;margin:0;color:#565656;line-height:10px;font-size:13px'> You are just a step away from accessing your Evolutyz account</p><br><p style='padding:0;margin:0;color:#565656;line-height:18px;font-size:13px'>Please reset your password by clicking below link</p><br><a style='margin-top:10px;text-decoration:none;color:#ffffff;padding:10px 16px;font-weight:bold;margin-right:10px;text-align:center;display:inline-block;background-color:#666666' href='"+ callbackUrl + "'>Reset</a><br><p style='padding:0;margin:0;color:#565656;line-height:20px;font-size:13px'>Expires in:<strong>15 minutes only</strong></p><br><p style='padding:0;margin:0;color:#565656;line-height:20px;font-size:13px'>Thanks & Regards,<br>Team Evolutyz</p><br><p style='text-align:center;padding:0;margin:0' align='center'></p><br></td></tr></tbody></table></div></body>";
                    message.Body = mes.ToString();
                    // message.Body = @"<table width = " '/ 600px /' " align = 'center' cellpadding = '5px' border = '0' cellspacing = '0' style = 'border:1px solid #dcdcdc;margin-top:20px;border-radius:3px;vertical-align:middle;display:block;font-family:helvetica;font-size:16px;font-style:normal' > <tbody> < tr >< td >< p >< img alt = '' src = 'http://evolutyz.com/wp-content/themes/evolutyz/images/logo-evolutyz.png' style = 'width:80%;height:100px;margin-bottom:30px' class='CToWUd'></p></td><td style = 'text-align:right;padding:10px 5px;color:#808080;font-family:helvetica;font-size:10px;line-height:125%' >< h1 >< span class='il'>Evolutyz</span> Crop</h1></td></tr><tr><td><h2 style = 'display:block;font-family:helvetica;font-size:20px;font-style:normal;font-weight:bold;line-height:100%;letter-spacing:normal;margin-top:0px;margin-right:0px;margin-left:0px;color:#404040!important;text-align:left' > Hi " + user.UserName + ",</h2></td></tr><tr><td><div style = 'text-align:justify' > Hi : <a href = 'mailto:" + user.Email + "' target= '_blank' > " + user.Email + " </a></div><div style = 'text-align:justify' ></ div ></ td ></ tr >< tr >< td > Please reset your password by clicking below link<div><a style = 'margin-top:10px;text-decoration:none;color:#ffffff;padding:10px 16px;font-weight:bold;margin-right:10px;text-align:center;display:inline-block;background-color:#666666' href='" + callbackUrl + "' target='_blank' >Reset</a> </div> </td></tr> <tr><td><div style = 'text-align:justify' > </ div > < div > < p > Thanks & amp; Regards,</p>   </div>    <div><span class='il'>Evolutyz</span> Team</div>     </td>     </tr>   </tbody> </table>";
                    //  SetGifloader
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "SetGifloader", "SetGifloader()", true);
                    Sendmail.SendEmailByMailMessage(message,user.Email);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Offgifloader", "Offgifloader()", true);
                    Forgetpasswordform.Visible = false;
                    DisplayEmail.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}