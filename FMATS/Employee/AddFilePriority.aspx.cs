using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;

namespace FMATS.Employee
{
    public partial class AddFilePriority : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!this.Page.User.Identity.IsAuthenticated)
                {
                    FormsAuthentication.RedirectToLoginPage();
                }
                else
                {
                    BindData();
                }
            }
        }
        void BindData()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.FilePriorities
                        select new
                        {
                            query.FilePriorityId,
                            query.FilePriorityName,
                            query.FilePriorityIntervalAlert,
                            query.FilePriorityIntervalCrit,
                            query.FilePriorityIntervalNotif,
                            query.CreatedDate
                        }).ToList();
                    if (data.Count > 0)
                    {
                        FPGrid.DataSource = data;
                        FPGrid.DataBind();
                    }
                    else
                    {
                        FPGrid.DataSource = new List<DAL.Agent>();
                        FPGrid.DataBind();
                    }
                }
            }
            catch (Exception e)
            {

            }
        }

        protected void btnsubmit_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (btnsubmit.InnerText == "Submit")
                {
                    FilePriority filePriorities = new FilePriority
                    {
                        FilePriorityIntervalAlert = string.IsNullOrEmpty(txtintervalAlert.Value) ? 0 : Convert.ToDecimal(txtintervalAlert.Value),
                        FilePriorityIntervalCrit = string.IsNullOrEmpty(txtPriorityIntervalCrit.Value) ? 0 : Convert.ToDecimal(txtPriorityIntervalCrit.Value),
                        FilePriorityIntervalNotif = string.IsNullOrEmpty(txtintervalNotif.Value) ? 0 : Convert.ToDecimal(txtintervalNotif.Value),
                        FilePriorityName = txtpriorityname.Value,
                        CreatedBy = 1,
                        CreatedDate = DateTime.Now
                    };

                    FileTrackingContainer entities = new FileTrackingContainer();
                    entities.FilePriorities.Add(filePriorities);
                    entities.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('FilePriority  added sucessfully');", true);
                    BindData();
                }
                else if (btnsubmit.InnerText == "Update")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var id = int.Parse(hdnFPId.Value);
                        var resultToUpdate =
                            container.FilePriorities.SingleOrDefault(item => item.FilePriorityId == id);

                        if (resultToUpdate != null)
                        {
                            resultToUpdate.FilePriorityName = txtpriorityname.Value;
                            resultToUpdate.FilePriorityIntervalAlert = Convert.ToDecimal(txtintervalAlert.Value);
                            resultToUpdate.FilePriorityIntervalCrit = Convert.ToDecimal(txtPriorityIntervalCrit.Value);
                            resultToUpdate.FilePriorityIntervalNotif = Convert.ToDecimal(txtintervalNotif.Value);
                            resultToUpdate.ModifiedBy = 1;
                            resultToUpdate.ModifiedDate = DateTime.Now;
                        }
                        container.SaveChanges();
                        BindData();
                    }
                }
                ResetControls();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
            }
        }
        public void ResetControls()
        {
            txtintervalAlert.Value = "";
            txtPriorityIntervalCrit.Value = "";
            txtintervalNotif.Value = "";
            txtpriorityname.Value = "";
        }

        protected void AgentGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }
        protected void AgentGrid_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }
        protected void AgentGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // loop all data rows
                foreach (DataControlFieldCell cell in e.Row.Cells)
                {
                    // check all cells in one row
                    foreach (Control control in cell.Controls)
                    {
                        // Must use LinkButton here instead of ImageButton
                        // if you are having Links (not images) as the command button.
                        ImageButton button = control as ImageButton;
                        if (button != null && button.CommandName == "Delete")
                            // Add delete confirmation
                            button.OnClientClick = "if (!confirm('Are you sure you want to delete FP Id = " +
                                                   e.Row.Cells[0].Text + "?')) return;";
                    }
                }
            }
        }
        protected void AgentGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }
        protected void AgentGrid_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }
        protected void AgentGrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                if (e.CommandName == "Edit")
                {
                    hdnFPId.Value = e.CommandArgument.ToString();
                    txtpriorityname.Value = FPGrid.Rows[rowIndex - 1].Cells[1].Text;
                    txtintervalAlert.Value = FPGrid.Rows[rowIndex - 1].Cells[2].Text;
                    txtPriorityIntervalCrit.Value = FPGrid.Rows[rowIndex - 1].Cells[3].Text;
                    txtintervalNotif.Value = FPGrid.Rows[rowIndex - 1].Cells[4].Text;
                    btnsubmit.InnerText = "Update";
                }
                else if (e.CommandName == "Delete")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var agentToRemove = container.FilePriorities.Find(rowIndex);
                        container.FilePriorities.Remove(agentToRemove);
                        container.SaveChanges();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Deleted sucessfully');", true);
                        BindData();
                    }
                }
            }
            catch (Exception exception)
            {

            }
        }
    }
}