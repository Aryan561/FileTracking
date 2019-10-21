using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMATS.DAL;

namespace FMATS.Employee
{
    public partial class StatusReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
        }

        void BindGrid()
        {
            try
            {
                var searchValue = txtSearch.Value.Split(',');

                using (FileTrackingContainer container = new FileTrackingContainer())
                {
                    var data = (from query in container.FileDatas
                                join stat in container.Status on query.CurrentStatus equals stat.StatusName
                                join ag in container.Agents on query.CurrentAgentId equals ag.AgentId into leftAg
                                from agents in leftAg.DefaultIfEmpty(new DAL.Agent())
                                where (agents.AgentName.Contains(txtSearch.Value) || stat.StatusName.Contains(txtSearch.Value))
                                select new
                                {
                                    query.FileId,
                                    query.FileCode,
                                    query.FileEntredOn,
                                    query.CurrentStatus,
                                    agents.AgentName,
                                    agents.AgentMobile
                                }).ToList();
                    SRGrid.DataSource = data;
                    SRGrid.DataBind();
                }
            }
            catch (Exception e)
            {

            }
        }

        protected void CCGrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void CCGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void CCGrid_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void CCGrid_OnRowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}