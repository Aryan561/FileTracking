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
    public partial class AddClientCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (!this.Page.User.Identity.IsAuthenticated)
                //{
                //    FormsAuthentication.RedirectToLoginPage();
                //}
                //else
                    BindData();
            }
        }

        protected void btn_submit_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (btn_submit.InnerText == "Submit")
                {
                    ClientCategory clientCategory = new ClientCategory
                    {
                        Active = true,
                        ClientCategoryDescription = txtclientCategoryNamedesc.Value,
                        ClientCategoryName = txtclientCategoryName.Value,
                        dateadded = DateTime.Now,
                        UserID = 1
                    };
                    FileTrackingContainer entities = new FileTrackingContainer();
                    entities.ClientCategories.Add(clientCategory);
                    entities.SaveChanges();
                    ResetCotrols();
                    BindData();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(),
                        "toastr.success('ClientCategory Added Sucessfully');", true);
                }
                else if (btn_submit.InnerText == "Update")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var id = int.Parse(hdnClientId.Value);
                        var resultToUpdate =
                            container.ClientCategories.SingleOrDefault(item => item.ClientId == id);

                        if (resultToUpdate != null)
                        {
                            resultToUpdate.ClientCategoryDescription = txtclientCategoryNamedesc.Value;
                            resultToUpdate.ClientCategoryName = txtclientCategoryName.Value;
                            resultToUpdate.dateLastModified = DateTime.Now;
                        }
                        container.SaveChanges();
                        BindData();
                    }
                }
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

        void BindData()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.ClientCategories
                        select new
                        {
                            query.ClientCategoryName,
                            query.ClientCategoryDescription,
                            query.ClientId,
                            query.dateadded
                        }).ToList();
                    if (data.Count > 0)
                    {
                        CCGrid.DataSource = data;
                        CCGrid.DataBind();
                    }
                    else
                    {
                        CCGrid.DataSource = new List<DAL.ClientCategory>();
                        CCGrid.DataBind();
                    }
                }
            }
            catch (Exception e)
            {

            }
        }

        protected void CCGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void CCGrid_OnRowEditing_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void CCGrid_OnRowCommand_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                hdnClientId.Value = e.CommandArgument.ToString();
                txtclientCategoryName.Value = CCGrid.Rows[rowIndex - 1].Cells[1].Text;
                txtclientCategoryNamedesc.Value = CCGrid.Rows[rowIndex - 1].Cells[2].Text;

                btn_submit.InnerText = "Update";
            }
            else if (e.CommandName == "Delete")
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var agentToRemove = container.ClientCategories.Find(rowIndex);
                    container.ClientCategories.Remove(agentToRemove);
                    container.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Deleted sucessfully');", true);
                    BindData();
                }
            }
        }

        protected void CCGrid_OnRowDeleting_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            BindData();
        }

        protected void CCGrid_OnRowCancelingEdit_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            BindData();
        }
    }
}