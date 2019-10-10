<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="FMATS.Employee.Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/Plugins/datepicker/datepicker3.css" rel="stylesheet" />
    <script src="../Content/Plugins/datepicker/bootstrap-datepicker.js"></script>
    <section class="content">

        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="index.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Apply Leave</li>
        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user"></i>Apply Leave </h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="frmLeave" action="#" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="form-group">

                                                <label for="txtLeaveReason" class="col-sm-3 control-label">
                                                    Reason For Leave :
                                                </label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" name="txtLeaveReason" id="txtLeaveReason" placeholder="Reason For Leave" />
                                                </div>

                                                <div>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="optradio">Half Day
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="optradio">Full Day
                                                    </label>
                                                </div>


                                            </div>

                                            <div class="form-group">

                                                <label for="txtFromDate" class="col-sm-3 control-label">
                                                    From Date
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="txtFromDate" id="txtFromDate" placeholder="Select From Date" />
                                                </div>
                                            </div>



                                        </div>
                                        <div class="col-md-6">


                                            <div class="form-group">

                                                <label for="ddlLeaveType" class="col-sm-3 control-label">
                                                    Type of Leave
                                                </label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="ddlLeaveType" id="ddlLeaveType">
                                                        <option>Select Leave Type</option>
                                                        <option>Casual Leave</option>
                                                        <option>Sick Leave</option>
                                                        <option>Marriage Leave</option>
                                                        <option>Maternity Leave</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label for="txtToDate" class="col-sm-3 control-label">
                                                    To Date
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="txtToDate" id="txtToDate" placeholder="Select To Date" />
                                                </div>
                                            </div>




                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-offset-5 col-sm-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="submit" class="btn btn-danger">Cancel</button>
                            </div>
                        </form>

                    </div>

                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->

        <div class="row">
            <div class="col-sm-12">

                <div class="box box-primary">

                    <div class="box-header with-border">
                        <h3 class="box-title">Leave History</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">
                        <div class="row">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>From Date</label>
                                    <input type="text" class="form-control" name="txtFromDate" id="txtFromDate" placeholder="Select From Date" />
                                </div>
                                <!-- /.form-group -->
                            </div>

                            <div class="col-md-4">
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>To Date</label>
                                    <input type="text" class="form-control" name="txtFromDate" id="txtFromDate" placeholder="Select From Date" />
                                </div>
                                <!-- /.form-group -->
                            </div>


                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Leave Type</label>
                                    <select class="form-control" name="ddlLeaveType" id="ddlLeaveType">
                                        <option>Select Leave Type</option>
                                        <option>Casual Leave</option>
                                        <option>Sick Leave</option>
                                        <option>Marriage Leave</option>
                                        <option>Maternity Leave</option>
                                    </select>
                                </div>
                                <!-- /.row -->
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-offset-5 col-sm-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="submit" class="btn btn-danger">Cancel</button>
                            </div>
                        </div>

                        <div class="row">
                            <p></p>
                            <div class="box-body table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th>Leave Type</th>
                                        <th>From Date</th>
                                        <th>To Date</th>
                                        <th>No of Days</th>
                                        <th>Status</th>
                                        <th>Reason For Leave</th>
                                    </tr>
                                    <tr>
                                        <td>Casual</td>
                                        <td>11-7-2014</td>
                                        <td>11-7-2014</td>
                                        <td>1</td>
                                        <td><span class="label label-success">Approved</span></td>
                                        <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    </tr>
                                    <tr>
                                        <td>Compensation</td>
                                        <td>11-7-2014</td>
                                        <td>11-7-2014</td>
                                        <td>3</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    </tr>
                                    <tr>
                                        <td>Sick</td>
                                        <td>11-7-2014</td>
                                        <td>11-7-2014</td>
                                        <td>5</td>
                                        <td><span class="label label-primary">Approved</span></td>
                                        <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    </tr>
                                    <tr>
                                        <td>Casual</td>
                                        <td>11-7-2014</td>
                                        <td>11-7-2014</td>
                                        <td>2</td>
                                        <td><span class="label label-danger">Denied</span></td>
                                        <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    </tr>
                                </table>
                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
