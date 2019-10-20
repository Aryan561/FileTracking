<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddFilePriority.aspx.cs" Inherits="FMATS.Employee.AddFilePriority" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add File Priority</li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Add File Priority</h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="addfilepriority" action="#" method="post">


                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>FilePriorityName</label>
                                        <input type="text" name="txtpriorityname" runat="server" class="form-control" id="txtpriorityname" placeholder="Priority Name" data-bv-field="txtpriorityname" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtpriorityname" data-bv-result="NOT_VALIDATED" style="display: none;">The PriorityName is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>FileWeight</label>
                                        <input type="number" name="txtfileweight" runat="server" class="form-control" id="txtfileweight" placeholder="FileWeight" data-bv-field="txtname" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtname" data-bv-result="NOT_VALIDATED" style="display: none;">The FileWeight is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>FilePriorityIntervalNotif</label>
                                        <input type="number" name="txtintervalNotif" runat="server" class="form-control" id="txtintervalNotif" placeholder="FilePriorityIntervalNotif" data-bv-field="txtintervalNotif" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtintervalNotif" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalNotif is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>FilePriorityIntervalAlert </label>
                                        <input type="text" name="txtintervalAlert" runat="server" class="form-control" id="txtintervalAlert" placeholder="FilePriorityIntervalAlert" data-bv-field="txtintervalAlert" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtintervalAlert" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalAlert is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>FilePriorityIntervalCrit</label>
                                        <input type="text" name="txtPriorityIntervalCrit" runat="server" class="form-control" id="txtPriorityIntervalCrit" placeholder="Name" data-bv-field="txtPriorityIntervalCrit" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtPriorityIntervalCrit" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>






                            </div>
                            <div class="row">
                                <div class="col-md-9"></div>
                                <div class="col-md-3">
                                    <button runat="server" id="btnsubmit" type="submit" class="btn btn-primary pull-right" onserverclick="btnsubmit_ServerClick" >Submit</button>
                                </div>
                            </div>



                        </form>

                    </div>
                </div>
                <!-- /.table-responsive -->
                
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Agents</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <asp:HiddenField ID="hdnFPId" runat="server" />
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">
                        <div class="row">
                            <div class="box-body table-responsive">
                                <asp:GridView runat="server" id="FPGrid" CssClass="table table-hover"
                                              ShowHeaderWhenEmpty="true" 
                                              AutoGenerateColumns="false" DataKeyNames="FilePriorityId" OnRowEditing="AgentGrid_OnRowEditing"
                                              OnPageIndexChanging="AgentGrid_PageIndexChanging" OnRowCommand="AgentGrid_OnRowCommand"
                                              OnRowDataBound="AgentGrid_OnRowDataBound" OnRowDeleting="AgentGrid_OnRowDeleting"
                                              OnRowCancelingEdit="AgentGrid_RowCancelingEdit" Width="100%">
                                    <EmptyDataTemplate>No Records to fetch..!</EmptyDataTemplate>
                                    <Columns>  
                                        <asp:BoundField DataField="FilePriorityId" HeaderText="#" ReadOnly="True" />  
                                        <asp:BoundField DataField="FilePriorityName" HeaderText="Name" ReadOnly="True" />
                                        <asp:BoundField DataField="FilePriorityIntervalAlert" HeaderText="Interval" ReadOnly="True" />  
                                        <asp:BoundField DataField="FilePriorityIntervalCrit" HeaderText="Critical" ReadOnly="True" />
                                        <asp:BoundField DataField="FilePriorityIntervalNotif" HeaderText="Notification" ReadOnly="True" />  
                                        <asp:BoundField DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="Created" ReadOnly="True" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl="~/img/icons8-pencil-100.png" CommandArgument='<%#Eval("FilePriorityId") %>'
                                                                 ID="btnEdit" CommandName="Edit" runat="server" ToolTip="Edit"
                                                            Height="20px" Width="20px" />
                                                <asp:ImageButton ID="btnDelete" CommandName="Delete" ImageUrl="~/img/icons8-trash-20.png" runat="server"
                                                            ToolTip="Delete" Height="20px" Width="20px" CommandArgument='<%#Eval("FilePriorityId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->

    </section>



</asp:Content>
