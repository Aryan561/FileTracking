using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;


namespace FMATS.Employee
{
    public partial class AddFileCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_ServerClick(object sender, EventArgs e)
        {
            FileCategory fileCategory = new FileCategory
            {
                FileCategoryName = txtCategoryName.Value,
                FileCategoryDescription = txtCategoryNamedesc.Value


            };

            FiletrackingContainer entities = new FiletrackingContainer();
            entities.FileCategories.Add(fileCategory);
            entities.SaveChanges();
            resetcontrols();

            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('FileCategory Added sucessfully');", true);

        }

        public void resetcontrols()
        {
            txtCategoryName.Value = "";
            txtCategoryNamedesc.Value = "";

        }
    }
}