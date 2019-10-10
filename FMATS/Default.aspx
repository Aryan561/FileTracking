<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FMATS._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section class="content">


        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="Default.aspx"><i class="fa fa-dashboard"></i>File Status</a></li>

        </ol>


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-file"></i>File Status</h3>
                    </div>
                    <div class="panel-body">

                        <form class="form-horizontal" id="frmdefault" action="#" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-12">

                                            <div class="form-group">

                                                <label for="txtfilenumber" class="col-sm-3 control-label">
                                                    File Number :
                                                </label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" name="txtfilenumber" id="txtfilenumber" placeholder="Enter File Number" />
                                                </div>




                                            </div>





                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row" style="min-height: 15px">
                            </div>
                            <div class="row">
                                <div class="col-sm-offset-5 col-sm-12">
                                    <button type="submit" class="btn btn-primary">Search </button>
                                    <button type="submit" class="btn btn-danger">Reset</button>
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

        <div class="row">
            <div class="col-sm-12">

                <div class="box box-primary">

                    <div class="box-header with-border">
                        <h3 class="box-title">File Status</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body" style="display: block;">



                        <div class="row">
                            <p></p>
                            <div class="box-body table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th>File Number</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Agent Name</th>
                                    </tr>
                                    <tr>
                                        <td>124das525</td>
                                        <td>05-10-2019</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>Srikanth Konduru</td>
                                    </tr>
                                    <tr>
                                        <td>124das525</td>
                                        <td>06-10-2019</td>
                                        <td><span class="label label-success">waiting</span></td>
                                        <td>Admin Admin </td>

                                    </tr>
                                    <tr>
                                        <td>124das525</td>
                                        <td>07-10-2019</td>
                                        <td><span class="label label-danger">Rejected</span></td>
                                        <td>Srikanth Konduru</td>
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
