using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;

namespace FMATS.Employee
{
    public partial class AddStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_ServerClick(object sender, EventArgs e)
        {
            Status status = new Status
            {
                StatusName = txtstatusName.Value,
                
            };
            FiletrackingContainer entities = new FiletrackingContainer();
            entities.Status.Add(status);
            entities.SaveChanges();
            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Add Status sucessfull');", true);
            resetcontrols();
        }
        public void resetcontrols()
        {
            txtstatusName.Value = "";
        }
    }


}