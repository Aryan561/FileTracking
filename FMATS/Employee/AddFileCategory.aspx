<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddFileCategory.aspx.cs" Inherits="FMATS.Employee.AddFileCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add File Category</li>
        </ol>

        <asp:HiddenField runat="server" id="hdnFCId" />
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Add File Category</h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="addfileCategory" action="#" method="post">


                            <div class="row">

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>File Category Name</label>
                                        <input type="text" name="txtCategoryName" runat="server" class="form-control" id="txtCategoryName" placeholder="FileCategoryName" data-bv-field="txtCategoryName" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtCategoryName" data-bv-result="NOT_VALIDATED" style="display: none;">The FileCategoryName is required and can't be empty</small>
                                    </div>
                                    <div class="form-group">
                                        <label>File Category Description</label>
                                        <input type="text" name="txtCategoryNamedesc" runat="server" class="form-control" id="txtCategoryNamedesc" placeholder="FileCategoryDescription" data-bv-field="txtCategoryNamedesc" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtCategoryNamedesc" data-bv-result="NOT_VALIDATED" style="display: none;">The FileCategoryDescription is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-md-9"></div>
                                <div class="col-md-3">
                                    <button id="btnsubmit" type="submit" runat="server" class="btn btn-primary pull-right" onserverclick="btnsubmit_ServerClick" >Submit</button>
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
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">
                        <div class="row">
                            <div class="box-body table-responsive">
                                <asp:GridView runat="server" id="FCGrid" CssClass="table table-hover"
                                              ShowHeaderWhenEmpty="true" 
                                              AutoGenerateColumns="false" DataKeyNames="AgentId" OnRowEditing="FCGrid_OnRowEditing"
                                              OnPageIndexChanging="FCGrid_OnPageIndexChanging" OnRowCommand="FCGrid_OnRowCommand"
                                              OnRowDataBound="FCGrid_OnRowDataBound" OnRowDeleting="FCGrid_OnRowDeleting" Width="100%">
                                    <EmptyDataTemplate>No Records to fetch..!</EmptyDataTemplate>
                                    <Columns>  
                                        <asp:BoundField DataField="FileCategoryId" HeaderText="#" ReadOnly="True" />  
                                        <asp:BoundField DataField="FileCategoryName" HeaderText="Name" ReadOnly="True" />
                                        <asp:BoundField DataField="FileCategoryDescription" HeaderText="Description" ReadOnly="True" />  
                                        <asp:BoundField DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="Created" ReadOnly="True" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl="~/img/icons8-pencil-100.png" CommandArgument='<%#Eval("FileCategoryId") %>'
                                                                 ID="btnEdit" CommandName="Edit" runat="server" ToolTip="Edit"
                                                            Height="20px" Width="20px" />
                                                <asp:ImageButton ID="btnDelete" CommandName="Delete" ImageUrl="~/img/icons8-trash-20.png" runat="server"
                                                            ToolTip="Delete" Height="20px" Width="20px" CommandArgument='<%#Eval("FileCategoryId") %>' />
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
