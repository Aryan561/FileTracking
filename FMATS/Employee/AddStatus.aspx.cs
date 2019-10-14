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
            if (btn_submit.InnerText == "Submit")
            {
                Status status = new Status
                {
                    StatusName = txtstatusName.Value,
                    CreatedDate = DateTime.Now,
                    CreatedBy = 1
                };
                FileTrackingContainer entities = new FileTrackingContainer();
                entities.Status.Add(status);
                entities.SaveChanges();
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Add Status sucessfull');", true);
                resetcontrols();
            }
            else if (btn_submit.InnerText == "Update")
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var id = int.Parse(hdnFCId.Value);
                    var resultToUpdate =
                        container.Status.SingleOrDefault(item => item.StatusId == id);

                    if (resultToUpdate != null)
                    {
                        resultToUpdate.StatusName = txtstatusName.Value;
                        resultToUpdate.ModifiedDate = DateTime.Now;
                    }
                    container.SaveChanges();
                    BindData();
                }
            }
        }
        public void resetcontrols()
        {
            txtstatusName.Value = "";
        }
        void BindData()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.Status
                                select new
                                {
                                    query.StatusId,
                                    query.CreatedDate,
                                    query.StatusName
                                }).ToList();
                    if (data.Count > 0)
                    {
                        FCGrid.DataSource = data;
                        FCGrid.DataBind();
                    }
                    else
                    {
                        FCGrid.DataSource = new List<DAL.Status>();
                        FCGrid.DataBind();
                    }
                }
            }
            catch (Exception e)
            {

            }
        }

        protected void FCGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void FCGrid_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            BindData();
        }

        protected void FCGrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                hdnFCId.Value = e.CommandArgument.ToString();
                txtstatusName.Value = FCGrid.Rows[rowIndex - 1].Cells[1].Text;
                btn_submit.InnerText = "Update";
            }
            else if (e.CommandName == "Delete")
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var agentToRemove = container.Status.Find(rowIndex);
                    container.Status.Remove(agentToRemove);
                    container.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Deleted sucessfully');", true);
                    BindData();
                }
            }
        }

        protected void FCGrid_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            BindData();
        }
    }


}