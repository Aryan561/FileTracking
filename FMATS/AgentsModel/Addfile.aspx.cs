using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.IO;
using System.Threading;
using FMATS.DAL;
using QRCoder;
using Image = System.Web.UI.WebControls.Image;

namespace FMATS.AgentsModel
{
    public partial class Addfile : System.Web.UI.Page
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
                    FillDropdowns();
                    BuildFilesGrid();
                }
            }
        }
        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "₹";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }
        void FillDropdowns()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.FileCategories
                                select new
                                {
                                    query.FileCategoryId,
                                    query.FileCategoryName
                                }).ToList();
                    if (data.Count > 0)
                    {
                        foreach (var t in data)
                        {
                            ddlfilecategory.Items.Add(new ListItem
                            {
                                Text = t.FileCategoryName,
                                Value = Convert.ToString(t.FileCategoryId)
                            });
                        }
                    }

                    var data1 = (from query in container.FilePriorities
                                 select new
                                 {
                                     query.FilePriorityId,
                                     query.FilePriorityName,
                                     query.FilePriorityIntervalAlert
                                 }).ToList();
                    if (data.Count > 0)
                    {
                        foreach (var t in data1)
                        {
                            ddlfilepriority.Items.Add(new ListItem
                            {
                                Text = t.FilePriorityName,
                                Value = Convert.ToString(t.FilePriorityId) + "_" + Convert.ToString(t.FilePriorityIntervalAlert)
                            });
                        }
                    }

                    var data2 = (from query in container.Clients
                        select new
                        {
                            query.ClientId,
                            query.ClientName,
                        }).ToList();
                    if (data.Count > 0)
                    {
                        foreach (var t in data2)
                        {
                            ddlclientname.Items.Add(new ListItem
                            {
                                Text = t.ClientName,
                                Value = Convert.ToString(t.ClientId)
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {

            }
        }

        void BuildFilesGrid()
        {
            try
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.FileDatas
                                join c in container.Clients on query.ClientId equals c.ClientId
                                join fc in container.FileCategories on query.FileCategoryId equals fc.FileCategoryId
                                join a in container.Agents on query.CurrentAgentId equals a.AgentId //into ag
                                //from b in ag.DefaultIfEmpty(new DAL.Agent())
                                select new
                                {
                                    query.FileDataId,
                                    query.FileId,
                                    query.FileNoExt,
                                    query.FileNoInt,
                                    c.ClientName,
                                    fc.FileCategoryName,
                                    query.FilePriorityId,
                                    query.CurrentStatus,
                                    a.AgentName,
                                    query.FileEntredOn,
                                    query.FileDeliveredOn,
                                    query.SubjectBrief,
                                    query.SubjectDesc,
                                    query.CmoSection,
                                    query.LastUpdated,
                                    query.FileCode,
                                    query.ContactPersonName,
                                    query.ContactPersonNumber,
                                    query.FundType,
                                    query.FundSource,
                                    query.Scheme,
                                    query.Year,
                                    query.AmountProposed,
                                    query.AmountApproved,
                                    query.AmountMisc
                                }).ToList();
                    if (data.Count > 0)
                    {
                        FGrid.DataSource = data;
                        FGrid.DataBind();
                    }
                    else
                    {
                        FGrid.DataSource = new List<FileData>();
                        FGrid.DataBind();
                    }
                }
            }
            catch (Exception e)
            {

            }
        }

        protected void F_OnRowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void F_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            BuildFilesGrid();
        }

        protected void F_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                hdnFileId.Value = e.CommandArgument.ToString();
                //txtname.Value = AgentGrid.Rows[rowIndex - 1].Cells[1].Text;
                //var agentType = AgentGrid.Rows[rowIndex - 1].Cells[2].Text;
                //ddlagenttype.Items[0].Selected = false;
                //ddlagenttype.Items.FindByText(agentType).Selected = true;
                //txtAgentEmployeeName.Value = AgentGrid.Rows[rowIndex - 1].Cells[3].Text;
                //var access = AgentGrid.Rows[rowIndex - 1].Cells[4].Text;
                //ddlagentaccess.Items[0].Selected = false;
                //ddlagentaccess.Items.FindByText(access).Selected = true;
                //txtagentmobile.Value = AgentGrid.Rows[rowIndex - 1].Cells[5].Text;
                //txtemail.Value = AgentGrid.Rows[rowIndex - 1].Cells[6].Text;
                //txtagentscanpref.Value = AgentGrid.Rows[rowIndex - 1].Cells[7].Text;
                //txtagentsec.Value = AgentGrid.Rows[rowIndex - 1].Cells[8].Text;

                btnSubmit.InnerText = "Update";
            }
            else if (e.CommandName == "Delete")
            {
                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var agentToRemove = container.FileDatas.Find(rowIndex);
                    container.FileDatas.Remove(agentToRemove);
                    container.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "toastr.success('Deleted sucessfully');", true);
                    BuildFilesGrid();
                }
            }
        }

        protected void F_OnRowDataBound(object sender, GridViewRowEventArgs e)
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
                            button.OnClientClick = "if (!confirm('Are you sure you want to delete File Id = " +
                                                   e.Row.Cells[0].Text + "?')) return;";
                    }
                }
            }
        }

        protected void F_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btnSubmit_OnServerClick(object sender, EventArgs e)
        {
            try
            {
                if (btnSubmit.InnerText == "Submit")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        container.FileDatas.Add(new DAL.FileData
                        {
                            FileId = fileCode,
                            FileCategoryId =
                                    Convert.ToInt32(ddlfilecategory.Items[ddlfilecategory.SelectedIndex].Value),
                            FileCode = fileCode.Substring(0, 2),
                            FilePriorityId =
                                    Convert.ToInt32(ddlfilecategory.Items[ddlfilecategory.SelectedIndex].Value),
                            FileDeliveredOn = DateTime.Today,
                            FileEntredOn = DateTime.Now,
                            FileNoExt = "2",
                            FileNoInt = "2",
                            CreatedBy = 1,
                            CreatedDate = DateTime.Now,
                            AmountApproved = Convert.ToDecimal(txtamountApproved.Value),
                            AmountMisc = Convert.ToDecimal(txtamountmisc.Value),
                            AmountProposed = Convert.ToDecimal(txtamountApproved.Value),
                            ClientId = Convert.ToInt32(ddlclientname.Items[ddlclientname.SelectedIndex].Value),
                            CmoSection = txtcmosection.Value,
                            ContactPersonName = txtcontactpersonname.Value,
                            ContactPersonNumber = Convert.ToInt32(txtcontactpersonnumber.Value),
                            CurrentAgentId = 1,
                            CurrentStatus = "Active",
                            FundSource = "By Hand",
                            FundType = "Cash"
                        }
                        );
                        container.SaveChanges();
                    }
                }
                else if (btnSubmit.InnerText == "Update")
                {
                    using (FileTrackingContainer container = new FileTrackingContainer())
                    {
                        //var id = int.Parse(AgentId.Value);
                        //var resultToUpdate =
                        //    container.Agents.SingleOrDefault(item => item.AgentId == id);

                        //if (resultToUpdate != null)
                        //{
                        //    resultToUpdate.AgentName = txtname.Value;
                        //    resultToUpdate.AgentTypeID =
                        //        Convert.ToInt32(ddlagenttype.Items[ddlagenttype.SelectedIndex].Value);
                        //    resultToUpdate.AgentEmployeeName = txtAgentEmployeeName.Value;
                        //    resultToUpdate.AgentAccessLevelId =
                        //        Convert.ToInt32(ddlagentaccess.Items[ddlagentaccess.SelectedIndex].Value);
                        //    resultToUpdate.AgentMobile = Convert.ToInt64(txtagentmobile.Value);
                        //    resultToUpdate.AgentEmail = txtemail.Value;
                        //    resultToUpdate.AgentScanPref = txtagentscanpref.Value;
                        //    resultToUpdate.AgentSection = txtagentsec.Value;
                        //    resultToUpdate.ModifiedBy = 1;
                        //    resultToUpdate.ModifiedDate = DateTime.Now;

                        //}

                        container.SaveChanges();
                    }
                }
                BuildFilesGrid();
            }
            catch (Exception exception)
            {

            }
        }
        string fileCode = "";
        protected void GenerateQR_OnServerClick(object sender, EventArgs e)
        {
            try
            {
                QRCodeGenerator qr = new QRCodeGenerator();
                fileCode = GenerateFileCode();
                QRCodeGenerator.QRCode data =
                    qr.CreateQrCode(
                        fileCode + ", Amt = " + txtamountApproved.Value + ", Contact = " +
                        txtcontactpersonnumber.Value, QRCodeGenerator.ECCLevel.Q);

                System.Web.UI.WebControls.Image codeImage = new System.Web.UI.WebControls.Image();
                codeImage.Height = 162;
                codeImage.Width = 126;
                using (Bitmap map = data.GetGraphic(20))
                {
                    using (MemoryStream stream = new MemoryStream())
                    {
                        map.Save(stream, ImageFormat.Png);
                        byte[] bImg = stream.ToArray();
                        codeImage.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(bImg);

                        System.Drawing.Image i = System.Drawing.Image.FromStream(stream);
                        i.Save(Server.MapPath("~/img/" + fileCode + ".png"), ImageFormat.Png);
                    }
                }

                qrCodeData.Controls.Add(codeImage);
                btnSubmit.Disabled = false;
            }
            catch (Exception exception)
            {

            }

        }
        public string GenerateFileCode()
        {
            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";

            string characters = numbers;
            //if (rbType.SelectedItem.Value == "1")
            {
                characters += alphabets + small_alphabets + numbers;
            }
            int length = 8;
            string code = string.Empty;
            for (int i = 0; i < length; i++)
            {
                string character = string.Empty;
                do
                {
                    int index = new Random().Next(0, characters.Length);
                    character = characters.ToCharArray()[index].ToString();
                } while (code.IndexOf(character) != -1);
                code += character;
            }
            return code;
        }
    }
}