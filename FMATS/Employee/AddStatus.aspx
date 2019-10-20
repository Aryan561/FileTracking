<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddStatus.aspx.cs" Inherits="FMATS.Employee.AddStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add File Status</li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Add File Status</h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="AddAgent" action="#" method="post">


                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>StatusName</label>
                                        <input type="text" name="txtstatusName" runat="server" class="form-control" id="txtstatusName" placeholder="StatusName" data-bv-field="txtstatusName" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtstatusName" data-bv-result="NOT_VALIDATED" style="display: none;">The StatusName is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-md-9"></div>
                                <div class="col-md-3">
                                    <button id="btn_submit" runat="server" type="submit" onserverclick="btn_submit_ServerClick" class="btn btn-primary pull-right">Submit</button>
                                </div>
                            </div>



                        </form>

                    </div>
                </div>
                <!-- /.table-responsive -->
                
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Status</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <asp:HiddenField runat="server" id="hdnFCId" />
                    <div class="box-body" style="display: block;">
                        <div class="row">
                            <div class="box-body table-responsive">
                                <asp:GridView runat="server" id="FCGrid" CssClass="table table-hover"
                                              ShowHeaderWhenEmpty="true" 
                                              AutoGenerateColumns="false" DataKeyNames="StatusId" OnRowEditing="FCGrid_OnRowEditing"
                                              OnRowCommand="FCGrid_OnRowCommand"
                                              OnRowDataBound="FCGrid_OnRowDataBound" OnRowDeleting="FCGrid_OnRowDeleting" Width="100%">
                                    <EmptyDataTemplate>No Records to fetch..!</EmptyDataTemplate>
                                    <Columns>  
                                        <asp:BoundField DataField="StatusId" HeaderText="#" ReadOnly="True" />  
                                        <asp:BoundField DataField="StatusName" HeaderText="Name" ReadOnly="True" />
                                        <asp:BoundField DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="Created" ReadOnly="True" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl="~/img/icons8-pencil-100.png" CommandArgument='<%#Eval("StatusId") %>'
                                                                 ID="btnEdit" CommandName="Edit" runat="server" ToolTip="Edit"
                                                            Height="20px" Width="20px" />
                                                <asp:ImageButton ID="btnDelete" CommandName="Delete" ImageUrl="~/img/icons8-trash-20.png" runat="server"
                                                            ToolTip="Delete" Height="20px" Width="20px" CommandArgument='<%#Eval("StatusId") %>' />
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
