<%@ Page Title="" Language="C#" MasterPageFile="~/AgentsModel/Site.Master" AutoEventWireup="true" CodeBehind="Addfile.aspx.cs" Inherits="FMATS.AgentsModel.Addfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <section class="content">
        <ol class="breadcrumb" style="background-color: white;">
            <%--<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>--%>
            <li class="active">Add File </li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-th"></i>Add File </h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="AddAgent" action="#" method="post">


                            <div class="row">

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>Client Name</label>

                                        <select class="form-control" id="ddlclientname" runat="server" name="ddlclientname" data-bv-field="ddlclientname">
                                            <option value="">None</option>
                                            <option value="1">Srikanth Konduru </option>
                                            <option value="2">Ben Mark</option>

                                        </select>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlclientname" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Type</small>

                                    </div>

                                </div>
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>File Category</label>

                                        <select class="form-control" id="ddlfilecategory" runat="server" name="ddlfilecategory" data-bv-field="ddlfilecategory">
                                            <option value="">None</option>
                                            <option value="1">Urgent</option>
                                            <option value="2">Medium</option>
                                            <option value="2">Normal</option>

                                        </select>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlfilecategory" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Type</small>

                                    </div>

                                </div>
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>File Priority</label>

                                        <select class="form-control" id="ddlfilepriority" runat="server" name="ddlfilepriority" data-bv-field="ddlfilepriority">
                                            <option value="">None</option>
                                            <option value="1">Urgent</option>
                                            <option value="2">Medium</option>
                                            <option value="2">Normal</option>

                                        </select>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlfilepriority" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Type</small>

                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>Subject Brief</label>
                                        <input type="number" name="txtsubjectbrief" runat="server" class="form-control" id="txtsubjectbrief" placeholder="Subject Brief" data-bv-field="txtsubjectbrief" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtsubjectbrief" data-bv-result="NOT_VALIDATED" style="display: none;">The FileWeight is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Subject Desc</label>
                                        <input type="number" name="txtsubjectdesc" runat="server" class="form-control" id="txtsubjectdesc" placeholder="Subject Desc" data-bv-field="txtsubjectdesc" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtsubjectdesc" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalNotif is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>Cmo Section </label>
                                        <input type="text" name="txtcmosection" runat="server" class="form-control" id="txtcmosection" placeholder="Cmo section" data-bv-field="txtcmosection" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtcmosection" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalAlert is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Contact Person Name</label>
                                        <input type="text" name="txtcontactpersonname" runat="server" class="form-control" id="txtcontactpersonname" placeholder="Contact Person Name" data-bv-field="txtcontactpersonname" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtcontactpersonname" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Contact Person Number</label>
                                        <input type="number" name="txtcontactpersonnumber" runat="server" class="form-control" id="txtcontactpersonnumber" placeholder="Contact Person Number" data-bv-field="txtcontactpersonnumber" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtcontactpersonnumber" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Funds Type</label>
                                        <input type="text" name="txtfundstype" runat="server" class="form-control" id="txtfundstype" placeholder="Funds Type" data-bv-field="txtfundstype" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtfundstype" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Funds Source</label>
                                        <input type="text" name="txtfundssource" runat="server" class="form-control" id="txtfundssource" placeholder="Funds Source" data-bv-field="txtfundssource" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtfundssource" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Schema</label>
                                        <input type="text" name="txtSchema" runat="server" class="form-control" id="txtSchema" placeholder="Schema" data-bv-field="txtSchema" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtSchema" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Amount Proposed</label>
                                        <input type="text" name="txtamountproposed" runat="server" class="form-control" id="txtamountproposed" placeholder="Schema" data-bv-field="txtamountproposed" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtamountproposed" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Amount Approved</label>
                                        <input type="text" name="txtamountApproved" runat="server" class="form-control" id="txtamountApproved" placeholder="Schema" data-bv-field="txtamountApproved" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtamountApproved" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
                                    </div>
                                    <!-- /.form-group -->
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Amount Misc</label>
                                        <input type="text" name="txtamountmisc" runat="server" class="form-control" id="txtamountmisc" placeholder="Schema" data-bv-field="txtamountmisc" />
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtamountmisc" data-bv-result="NOT_VALIDATED" style="display: none;">The FilePriorityIntervalCrit is required and can't be empty</small>
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

