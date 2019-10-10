<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="AddFileCategory.aspx.cs" Inherits="FMATS.Employee.AddFileCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add File Category</li>
        </ol>


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
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->

    </section>

</asp:Content>
