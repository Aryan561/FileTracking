using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;

namespace FMATS.Employee
{
    public partial class AddFilePriority : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_ServerClick(object sender, EventArgs e)
        {
            FilePriority filePriorities = new FilePriority
            {
                FilePriorityIntervalAlert = string.IsNullOrEmpty(txtintervalAlert.Value) ? 0 : Convert.ToDecimal(txtintervalAlert.Value),
                FilePriorityIntervalCrit = string.IsNullOrEmpty(txtPriorityIntervalCrit.Value) ? 0 : Convert.ToDecimal(txtPriorityIntervalCrit.Value),
                FilePriorityIntervalNotif = string.IsNullOrEmpty(txtintervalNotif.Value) ? 0 : Convert.ToDecimal(txtintervalNotif.Value),
                FilePriorityName = txtpriorityname.Value,

            };

            FiletrackingContainer entities = new FiletrackingContainer();
            entities.FilePriorities.Add(filePriorities);
            entities.SaveChanges();
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('FilePriority  added sucessfully');", true);

        }


        public void ResetControls()
        {
            txtintervalAlert.Value = "";
            txtPriorityIntervalCrit.Value = "";
            txtintervalNotif.Value = "";
            txtpriorityname.Value = "";



        }
    }
}