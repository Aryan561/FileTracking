using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FMATS.Models;
namespace FMATS
{
    public partial class Login : System.Web.UI.Page
    {
        /// <summary>
        /// pageLoad
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        /// <summary>
        /// Loginclick event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_login_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (IsValid)
                {
                    // Validate the user password
                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                    // This doen't count login failures towards account lockout
                    // To enable password failures to trigger lockout, change to shouldLockout: true
                    var result = signinManager.PasswordSignIn(email.Value, password.Value, true, shouldLockout: false);

                    switch (result)
                    {
                        case SignInStatus.Success:
                            IdentityHelper.RedirectToReturnUrl("~/Employee/index", Response);
                            break;
                        case SignInStatus.LockedOut:
                            Response.Redirect("/Account/Lockout");
                            break;
                        //case SignInStatus.RequiresVerification:
                        //    Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                        //                                    Request.QueryString["ReturnUrl"],
                        //                                    true),
                        //                      true);
                        //    break;
                        case SignInStatus.Failure:
                        default:
                            FailureText.Text = "Invalid login attempt";
                            ErrorMessage.Visible = true;
                            break;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}