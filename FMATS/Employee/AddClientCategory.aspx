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

            </div>

        </div>


    </section>

</asp:Content>
