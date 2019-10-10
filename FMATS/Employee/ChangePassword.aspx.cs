using System;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FMATS.Models;

namespace FMATS.Employee
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sucess_mess.Visible = false;
        }

        protected void btn_changePassword_Click(object sender, EventArgs e)
        {
            string username = Context.User.Identity.Name;

           
            if (username != null)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

                
                var user = manager.FindByName(username);
                var isoldpassword = manager.CheckPassword(user, txtOldPassword.Value);
                if (user == null)
                {
                    ErrorMessage.Text = "No user found";
                    return;
                }
                if (!isoldpassword)
                {
                    ErrorMessage.Text = "Please enter proper old password";
                    return;
                }
                var result = manager.ChangePassword(user.Id, txtOldPassword.Value,txtConfirmPassword.Value);
                if (result.Succeeded)
                {
                    sucess_mess.Visible = true;
                    return;
                }
                else
                {
                    ErrorMessage.Text = result.Errors.FirstOrDefault();
                }
                return;
            }

        }
    }
}