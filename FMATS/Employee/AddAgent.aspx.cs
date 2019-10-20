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
    public partial class AddAgent : System.Web.UI.Page
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
                    BindAgentsData();
                }
            }
        }

        private void BindAgentsData()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.Agents
                                join al in container.AgentAccessLevels on query.AgentAccessLevelId equals al.AgentAccessLevelId
                                join at in container.AgentTypes on query.AgentTypeID equals at.AgentTypeId
                                select new
                                {
                                    query.AgentName,
                                    query.AgentId,
                                    AgentType = at.Description,
                                    EmployeeName = query.AgentEmployeeName,
                                    AccessLevels = al.AccessLevel,
                                    Mobile = query.AgentMobile,
                                    Email = query.AgentEmail,
                                    ScanPref = query.AgentScanPref,
                                    Section = query.AgentSection,
                                    query.AgentMisc1,
                                    query.AgentMisc2,
                                    query.AgentMisc3,
                                    query.CreatedDate
                                }).ToList();
                    if (data.Count > 0)
                    {
                        AgentGrid.DataSource = data;
                        AgentGrid.DataBind();
                    }
                    else
                    {
                        AgentGrid.DataSource = new List<DAL.Agent>();
                        AgentGrid.DataBind();
                    }
                }
            }
            catch (Exception e)
            {

            }

        }

        protected void btn_addagent_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnSubmit.InnerText == "Submit")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        container.Agents.Add(new DAL.Agent
                        {
                            AgentName = txtname.Value,
                            AgentTypeID = Convert.ToInt32(ddlagenttype.Items[ddlagenttype.SelectedIndex].Value),
                            AgentEmployeeName = txtAgentEmployeeName.Value,
                            AgentAccessLevelId = Convert.ToInt32(ddlagentaccess.Items[ddlagentaccess.SelectedIndex].Value),
                            AgentMobile = Convert.ToInt64(txtagentmobile.Value),
                            AgentEmail = txtemail.Value,
                            AgentScanPref = txtagentscanpref.Value,
                            AgentSection = txtagentsec.Value,
                            CreatedBy = 1,
                            CreatedDate = DateTime.Now
                        }
                        );
                        container.SaveChanges();
                    }
                }
                else if (btnSubmit.InnerText == "Update")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var id = int.Parse(AgentId.Value);
                        var resultToUpdate =
                            container.Agents.SingleOrDefault(item => item.AgentId == id);

                        if (resultToUpdate != null)
                        {
                            resultToUpdate.AgentName = txtname.Value;
                            resultToUpdate.AgentTypeID =
                                Convert.ToInt32(ddlagenttype.Items[ddlagenttype.SelectedIndex].Value);
                            resultToUpdate.AgentEmployeeName = txtAgentEmployeeName.Value;
                            resultToUpdate.AgentAccessLevelId =
                                Convert.ToInt32(ddlagentaccess.Items[ddlagentaccess.SelectedIndex].Value);
                            resultToUpdate.AgentMobile = Convert.ToInt64(txtagentmobile.Value);
                            resultToUpdate.AgentEmail = txtemail.Value;
                            resultToUpdate.AgentScanPref = txtagentscanpref.Value;
                            resultToUpdate.AgentSection = txtagentsec.Value;
                            resultToUpdate.ModifiedBy = 1;
                            resultToUpdate.ModifiedDate = DateTime.Now;

                        }

                        container.SaveChanges();
                    }
                }

                //clear values
                txtname.Value = string.Empty;
                ddlagenttype.SelectedIndex = 0;
                txtAgentEmployeeName.Value = string.Empty;
                ddlagentaccess.SelectedIndex = 0;
                txtagentmobile.Value = string.Empty;
                txtemail.Value = string.Empty;
                txtagentscanpref.Value = string.Empty;
                txtagentsec.Value = string.Empty;
                BindAgentsData();
            }
            catch (Exception exception)
            {

            }
        }
        protected void AgentGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void AgentGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void AgentGrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                AgentId.Value = e.CommandArgument.ToString();
                txtname.Value = AgentGrid.Rows[rowIndex - 1].Cells[1].Text;
                var agentType = AgentGrid.Rows[rowIndex - 1].Cells[2].Text;
                ddlagenttype.Items[0].Selected = false;
                ddlagenttype.Items.FindByText(agentType).Selected = true;
                txtAgentEmployeeName.Value = AgentGrid.Rows[rowIndex - 1].Cells[3].Text;
                var access = AgentGrid.Rows[rowIndex - 1].Cells[4].Text;
                ddlagentaccess.Items[0].Selected = false;
                ddlagentaccess.Items.FindByText(access).Selected = true;
                txtagentmobile.Value = AgentGrid.Rows[rowIndex - 1].Cells[5].Text;
                txtemail.Value = AgentGrid.Rows[rowIndex - 1].Cells[6].Text;
                txtagentscanpref.Value = AgentGrid.Rows[rowIndex - 1].Cells[7].Text;
                txtagentsec.Value = AgentGrid.Rows[rowIndex - 1].Cells[8].Text;

                btnSubmit.InnerText = "Update";
            }
            else if (e.CommandName == "Delete")
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var agentToRemove = container.Agents.Find(rowIndex);
                    container.Agents.Remove(agentToRemove);
                    container.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Deleted sucessfully');", true);
                    BindAgentsData();
                }
            }
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
                            button.OnClientClick = "if (!confirm('Are you sure you want to delete Agent Id = " +
                                                   e.Row.Cells[0].Text + "?')) return;";
                    }
                }
            }
        }

        protected void AgentGrid_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }
    }
}