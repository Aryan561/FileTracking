using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FMATS.Models;
using FMATS.DAL;
using System.Web.UI.WebControls;

namespace FMATS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FiletrackingContainer entity = new FiletrackingContainer();
                var clientcatelist = (from clientcate in entity.ClientCategories
                                      select clientcate).ToList();

                ddlCat.DataTextField = "ClientCategoryName";
                ddlCat.DataValueField = "ClientCategoryId";

                ddlCat.DataSource = clientcatelist;
                ddlCat.DataBind();
                ddlCat.Items.Insert(0, new ListItem("--Select--", "-1"));
            }

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {

            FiletrackingContainer entity = new FiletrackingContainer();
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = txtname.Value, Email = txtemail.Value };
            IdentityResult result = manager.Create(user, txtNewPassword.Value);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                string code = manager.GenerateEmailConfirmationToken(user.Id);

                //saving cliet talbe 

                Client cliententity = new Client
                {
                    ClientAddress = txtAddress.Value,
                    ClientDistrict = txtdist.Value,
                    ClientEmail = txtemail.Value,
                    // ClientMobile= string.IsNullOrEmpty(txtphone.Value)? null : long.Parse(txtphone.Value),

                };
                entity.Clients.Add(cliententity);


                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);



            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}