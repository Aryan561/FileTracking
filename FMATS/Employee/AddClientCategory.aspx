<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddClientCategory.aspx.cs" Inherits="FMATS.Employee.AddClientCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add Client Category</li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Add Client Category</h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="addclientcategory" action="#" method="post">


                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Client Category Name</label>
                                        <input type="text" name="txtclientCategoryName" runat="server" class="form-control" id="txtclientCategoryName" placeholder="ClientCategoryName" data-bv-field="txtclientCategoryName" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtclientCategoryName" data-bv-result="NOT_VALIDATED" style="display: none;">The ClientCategoryName is required and can't be empty</small>
                                    </div>
                                    <div class="form-group">
                                        <label>Client Category Description</label>
                                        <input type="text" name="txtclientCategoryNamedesc" runat="server" class="form-control" id="txtclientCategoryNamedesc" placeholder="ClientCategoryDescription" data-bv-field="txtclientCategoryNamedesc" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtclientCategoryNamedesc" data-bv-result="NOT_VALIDATED" style="display: none;">The ClientCategoryDescription is required and can't be empty</small>
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
                
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Agents</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <asp:HiddenField runat="server" id="hdnClientId" />
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">
                        <div class="row">
                            <div class="box-body table-responsive">
                                <asp:GridView runat="server" id="CCGrid" CssClass="table table-hover"
                                              ShowHeaderWhenEmpty="true" 
                                              AutoGenerateColumns="false" DataKeyNames="ClientId" OnRowEditing="CCGrid_OnRowEditing_OnRowEditing"
                                              OnRowCommand="CCGrid_OnRowCommand_OnRowCommand"
                                              OnRowDataBound="CCGrid_OnRowDataBound" OnRowDeleting="CCGrid_OnRowDeleting_OnRowDeleting"
                                              OnRowCancelingEdit="CCGrid_OnRowCancelingEdit_RowCancelingEdit" Width="100%">
                                    <EmptyDataTemplate>No Records to fetch..!</EmptyDataTemplate>
                                    <Columns>  
                                        <asp:BoundField DataField="ClientId" HeaderText="#" ReadOnly="True" />  
                                        <asp:BoundField DataField="ClientCategoryName" HeaderText="Name" ReadOnly="True" />
                                        <asp:BoundField DataField="ClientCategoryDescription" HeaderText="Description" ReadOnly="True" />  
                                        <asp:BoundField DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="Created" ReadOnly="True" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl="~/img/icons8-pencil-100.png" CommandArgument='<%#Eval("ClientId") %>'
                                                                 ID="btnEdit" CommandName="Edit" runat="server" ToolTip="Edit"
                                                            Height="20px" Width="20px" />
                                                <asp:ImageButton ID="btnDelete" CommandName="Delete" ImageUrl="~/img/icons8-trash-20.png" runat="server"
                                                            ToolTip="Delete" Height="20px" Width="20px" CommandArgument='<%#Eval("ClientId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>


    </section>

</asp:Content>
