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
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->

    </section>



</asp:Content>
