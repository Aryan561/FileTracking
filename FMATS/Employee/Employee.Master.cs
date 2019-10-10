using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMATS.Employee
{
    public partial class Employee : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var username = Context.User.Identity.Name;
             
            //if (username != null && Context.User.Identity.IsAuthenticated)
            //{
            //    if (!IsPostBack)
            //    {
            //        lbl_username.Text = Context.User.Identity.Name;
            //        lbl_name.Text = Context.User.Identity.Name;
            //    }
            //}
            //else
            //{
            //    Response.Redirect("~/Login.aspx");
            //}
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/Login.aspx");

        }

        protected void btn_profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void btn_changepasswoerd_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}