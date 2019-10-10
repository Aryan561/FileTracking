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
                                            <option value="">None</option>
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
                                    <button type="submit" class="btn btn-primary pull-right">Submit</button>
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
