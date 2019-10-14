<%@ Page Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddAgent.aspx.cs" Inherits="FMATS.Employee.AddAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/Plugins/datepicker/datepicker3.css" rel="stylesheet" />
    <script src="../Content/Plugins/datepicker/bootstrap-datepicker.js"></script>
    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add Agent</li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user"></i>Add Agent </h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="AddAgent" action="#" method="post">
                            <asp:HiddenField runat="server" id="AgentId"/>
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" name="txtname" runat="server" class="form-control" id="txtname" placeholder="Name" data-bv-field="txtname" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtname" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                                    </div>
                                </div>

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>Agent Type</label>

                                        <select class="form-control" id="ddlagenttype" runat="server" name="ddlagenttype" data-bv-field="ddlagenttype">
                                            <option selected="selected" value="">None</option>
                                            <option value="1">Quick Agent</option>
                                            <option value="2">Full Agent</option>
                                        </select>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlagenttype" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Type</small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Agent Employee Name</label>
                                        <input type="text" name="txtAgentEmployeeName" runat="server" class="form-control" id="txtAgentEmployeeName" placeholder="Agent Employee Name" data-bv-field="txtAgentEmployeeName" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtAgentEmployeeName" data-bv-result="NOT_VALIDATED" style="display: none;">The AgentEmployeeName is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>Agent Access Level Id </label>
                                        <select class="form-control" id="ddlagentaccess" runat="server" name="ddlagentaccess" data-bv-field="ddlagentaccess">
                                            <option value="">None</option>
                                            <option value="1">Quick Access</option>
                                            <option value="2">Full Access</option>

                                        </select>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlagentaccess" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Type</small>

                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Agent Mobile</label>
                                        <input type="text" name="txtagentmobile" runat="server" class="form-control" id="txtagentmobile" placeholder="Mobile" data-bv-field="txtname" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtagentmobile" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Agent Email</label>
                                        <input type="text" name="txtemail" runat="server" class="form-control" id="txtemail" placeholder="Email" data-bv-field="txtemail" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtemail" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Agent Scan Pref</label>
                                        <input type="text" name="txtagentscanpref" runat="server" class="form-control" id="txtagentscanpref" placeholder="Agent Scan Pref" data-bv-field="txtagentscanpref" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtagentscanpref" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Agent Section</label>
                                        <input type="text" name="txtagentsec" runat="server" class="form-control" id="txtagentsec" placeholder="Name" data-bv-field="txtagentsec" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtagentsec" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-9"></div>
                                <div class="col-md-3">
                                    <button type="button" runat="server" ID="btnSubmit" OnServerClick="btn_addagent_Click" class="btn btn-primary pull-right">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Agents</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">
                        <div class="row">
                            <div class="box-body table-responsive">
                                <asp:GridView runat="server" id="AgentGrid" CssClass="table table-hover"
                                              ShowHeaderWhenEmpty="true" 
                                              AutoGenerateColumns="false" DataKeyNames="AgentId" OnRowEditing="AgentGrid_OnRowEditing"
                                              OnPageIndexChanging="AgentGrid_PageIndexChanging" OnRowCommand="AgentGrid_OnRowCommand"
                                              OnRowDataBound="AgentGrid_OnRowDataBound" OnRowDeleting="AgentGrid_OnRowDeleting"
                                              OnRowCancelingEdit="AgentGrid_RowCancelingEdit" Width="100%">
                                    <EmptyDataTemplate>No Records to fetch..!</EmptyDataTemplate>
                                    <Columns>  
                                        <asp:BoundField DataField="AgentId" HeaderText="#" ReadOnly="True" />  
                                        <asp:BoundField DataField="AgentName" HeaderText="Name" ReadOnly="True" />
                                        <asp:BoundField DataField="AgentType" HeaderText="Agent Type" ReadOnly="True" />  
                                        <asp:BoundField DataField="EmployeeName" HeaderText="Employee" ReadOnly="True" />
                                        <asp:BoundField DataField="AccessLevels" HeaderText="Access Level" ReadOnly="True" />  
                                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" />  
                                        <asp:BoundField DataField="ScanPref" HeaderText="Scan Pref" ReadOnly="True" />
                                        <asp:BoundField DataField="Section" HeaderText="Section" ReadOnly="True" />  
                                        <asp:BoundField DataField="AgentMisc1" HeaderText="Agent Misc1" ReadOnly="True" />
                                        <asp:BoundField DataField="AgentMisc2" HeaderText="Agent Misc2" ReadOnly="True" />  
                                        <asp:BoundField DataField="AgentMisc3" HeaderText="Agent Misc3" ReadOnly="True" />
                                        <asp:BoundField DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="Created" ReadOnly="True" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl="~/img/icons8-pencil-100.png" CommandArgument='<%#Eval("AgentId") %>'
                                                                 ID="btnEdit" CommandName="Edit" runat="server" ToolTip="Edit"
                                                            Height="20px" Width="20px" />
                                                <asp:ImageButton ID="btnDelete" CommandName="Delete" ImageUrl="~/img/icons8-trash-20.png" runat="server"
                                                            ToolTip="Delete" Height="20px" Width="20px" CommandArgument='<%#Eval("AgentId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->

        </div>

        <!-- /.panel panel-default -->

    </section>


</asp:Content>
