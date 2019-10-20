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
    public partial class AddFileCategory : System.Web.UI.Page
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
                    BindData();
            }
        }

        void BindData()
        {
            try
            {
                try
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var data = (from query in container.FileCategories
                            select new
                            {
                                query.FileCategoryId,
                                query.CreatedDate,
                                query.FileCategoryDescription,
                                query.FileCategoryName
                            }).ToList();
                        if (data.Count > 0)
                        {
                            FCGrid.DataSource = data;
                            FCGrid.DataBind();
                        }
                        else
                        {
                            FCGrid.DataSource = new List<DAL.FileCategory>();
                            FCGrid.DataBind();
                        }
                    }
                }
                catch (Exception e)
                {

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
                    FileCategory fileCategory = new FileCategory
                    {
                        FileCategoryName = txtCategoryName.Value,
                        FileCategoryDescription = txtCategoryNamedesc.Value,
                        CreatedDate = DateTime.Now,
                        CreatedBy = 1
                    };

                    FileTrackingContainer entities = new FileTrackingContainer();
                    entities.FileCategories.Add(fileCategory);
                    entities.SaveChanges();
                    resetcontrols();

                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(),
                        "toastr.success('FileCategory Added sucessfully');", true);
                    BindData();
                }
                else if (btnsubmit.InnerText == "Update")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var id = int.Parse(hdnFCId.Value);
                        var resultToUpdate =
                            container.FileCategories.SingleOrDefault(item => item.FileCategoryId == id);

                        if (resultToUpdate != null)
                        {
                            resultToUpdate.FileCategoryDescription = txtCategoryNamedesc.Value;
                            resultToUpdate.FileCategoryName = txtCategoryName.Value;
                            resultToUpdate.ModifiedBy = 1;
                            resultToUpdate.ModifiedDate = DateTime.Now;
                        }
                        container.SaveChanges();
                        resetcontrols();
                        BindData();
                    }
                }
            }
            catch (Exception exception)
            {

            }

        }

        public void resetcontrols()
        {
            txtCategoryName.Value = "";
            txtCategoryNamedesc.Value = "";

        }

        protected void FCGrid_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void FCGrid_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void FCGrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                if (e.CommandName == "Edit")
                {
                    hdnFCId.Value = e.CommandArgument.ToString();
                    txtCategoryName.Value = FCGrid.Rows[rowIndex - 1].Cells[1].Text;
                    txtCategoryNamedesc.Value = FCGrid.Rows[rowIndex - 1].Cells[2].Text;
                    btnsubmit.InnerText = "Update";
                }
                else if (e.CommandName == "Delete")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        var agentToRemove = container.FileCategories.Find(rowIndex);
                        container.FileCategories.Remove(agentToRemove);
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

        protected void FCGrid_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void FCGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
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
    }
}