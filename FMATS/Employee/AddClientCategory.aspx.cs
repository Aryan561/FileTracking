using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;

namespace FMATS.Employee
{
    public partial class AddClientCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_ServerClick(object sender, EventArgs e)
        {
            try
            {
                ClientCategory clientCategory = new ClientCategory
                {
                    Active = true,
                    ClientCategoryDescription = txtclientCategoryNamedesc.Value,
                    ClientCategoryName = txtclientCategoryName.Value,
                };


                FiletrackingContainer entities = new FiletrackingContainer();
                entities.ClientCategories.Add(clientCategory);
                entities.SaveChanges();
                ResetCotrols();
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('ClientCategory Added Sucessfully');", true);
            }
            catch (Exception ex)
            {

            }
        }
        public void ResetCotrols()
        {
            txtclientCategoryNamedesc.Value = "";
            txtclientCategoryName.Value = "";
        }
    }
}