﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FMATS.Employee.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <section class="content">
              <ol class="breadcrumb" style="background-color: white;">
                  <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li class="active">Dashboard</li>
              </ol>
              <!-- Info boxes -->
              <div class="row">
                  <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="info-box">
                          <span class="info-box-icon bg-aqua"><i class="fa fa-plane"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Files Submitted</span>
                              <span class="info-box-number"><label runat="server" readonly="readonly" ID="FilesSubmitted" value="100"></label><small></small></span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="info-box">
                          <span class="info-box-icon bg-red"><i class="fa fa-calendar-o"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">File Processing</span>
                              <span class="info-box-number"><label runat="server" ID="FilesInProcess" readonly="readonly"></label></span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                  </div>
                  <!-- /.col -->
                  <!-- fix for small devices only -->
                  <div class="clearfix visible-sm-block"></div>
                  <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="info-box">
                          <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Files Completed</span>
                              <span class="info-box-number"><label runat="server" ID="FilesCompleted" readonly="readonly" value="20"></label></span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="info-box">
                          <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Total Clients</span>
                              <span class="info-box-number"><label runat="server" ID="TotalClients" value="1200" readonly="readonly"></label></span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                  </div>
                  <!-- /.col -->
              </div> v
              <!-- /.row -->
              <div class="row">
                  <div class="col-md-12">
                      <div class="box">
                          <div class="box-header with-border">
                              <h3 class="box-title">Monthly Status Report</h3>
                              <div class="box-tools pull-right">
                                  <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                      <i class="fa fa-minus"></i>
                                  </button>
                                  <div class="btn-group">
                                      <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                                          <i class="fa fa-wrench"></i>
                                      </button>
                                      <ul class="dropdown-menu" role="menu">
                                          <li><a href="#">Action</a></li>
                                          <li><a href="#">Another action</a></li>
                                          <li><a href="#">Something else here</a></li>
                                          <li class="divider"></li>
                                          <li><a href="#">Separated link</a></li>
                                      </ul>
                                  </div>
                                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                              </div>
                          </div>
                          <!-- /.box-header -->
                          <div class="box-body">
                              <div class="row">
                                  <div class="col-md-8">
                                      <p class="text-center">
                                          <strong>Report From: 1 AUG, 2016 - 30 NOV, 2016</strong>
                                      </p>
                                      <div class="chart">
                                          <!-- Sales Chart Canvas -->
                                          <canvas id="salesChart" style="height: 180px;"></canvas>
                                      </div>
                                      <!-- /.chart-responsive -->
                                  </div>
                                  <!-- /.col -->
                                  <div class="col-md-4">
                                      <p class="text-center">
                                          <strong>Goal Completion</strong>
                                      </p>
                                      <div class="progress-group">
                                          <span class="progress-text">August</span>
                                          <span class="progress-number"><b>160</b>/200</span>
                                          <div class="progress sm">
                                              <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                                          </div>
                                      </div>
                                      <!-- /.progress-group -->
                                      <div class="progress-group">
                                          <span class="progress-text">September</span>
                                          <span class="progress-number"><b>310</b>/400</span>
                                          <div class="progress sm">
                                              <div class="progress-bar progress-bar-red" style="width: 80%"></div>
                                          </div>
                                      </div>
                                      <!-- /.progress-group -->
                                      <div class="progress-group">
                                          <span class="progress-text">October</span>
                                          <span class="progress-number"><b>480</b>/800</span>
                                          <div class="progress sm">
                                              <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                                          </div>
                                      </div>
                                      <!-- /.progress-group -->
                                      <div class="progress-group">
                                          <span class="progress-text">November</span>
                                          <span class="progress-number"><b>250</b>/500</span>
                                          <div class="progress sm">
                                              <div class="progress-bar progress-bar-yellow" style="width: 80%"></div>
                                          </div>
                                      </div>
                                      <!-- /.progress-group -->
                                  </div>
                                  <!-- /.col -->
                              </div>
                              <!-- /.row -->
                          </div>
                          <!-- ./box-body -->
                          <div class="box-footer" style="display:none">
                              <div class="row">
                                  <div class="col-sm-3 col-xs-6">
                                      <div class="description-block border-right">
                                          <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
                                          <h5 class="description-header">$35,210.43</h5>
                                          <span class="description-text">TOTAL REVENUE</span>
                                      </div>
                                      <!-- /.description-block -->
                                  </div>
                                  <!-- /.col -->
                                  <div class="col-sm-3 col-xs-6">
                                      <div class="description-block border-right">
                                          <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
                                          <h5 class="description-header">$10,390.90</h5>
                                          <span class="description-text">TOTAL COST</span>
                                      </div>
                                      <!-- /.description-block -->
                                  </div>
                                  <!-- /.col -->
                                  <div class="col-sm-3 col-xs-6">
                                      <div class="description-block border-right">
                                          <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                                          <h5 class="description-header">$24,813.53</h5>
                                          <span class="description-text">TOTAL PROFIT</span>
                                      </div>
                                      <!-- /.description-block -->
                                  </div>
                                  <!-- /.col -->
                                  <div class="col-sm-3 col-xs-6">
                                      <div class="description-block">
                                          <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                                          <h5 class="description-header">1200</h5>
                                          <span class="description-text">GOAL COMPLETIONS</span>
                                      </div>
                                      <!-- /.description-block -->
                                  </div>
                              </div>
                              <!-- /.row -->
                          </div>
                          <!-- /.box-footer -->
                      </div>
                      <!-- /.box -->
                  </div>
                  <!-- /.col -->
              </div>
              <!-- /.row -->
              <!-- Main row -->
              <div class="row">
                  <!-- Left col -->
                  <div class="col-md-12">
                      <!-- MAP & BOX PANE -->
                      <!-- TABLE: LATEST ORDERS -->
                      <div class="box box-info">
                          <div class="box-header with-border">
                              <h3 class="box-title">Approved Status</h3>
                              <div class="box-tools pull-right">
                                  <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                      <i class="fa fa-minus"></i>
                                  </button>
                                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                              </div>
                          </div>
                          <!-- /.box-header -->
                          <div class="box-body">
                              <div class="table-responsive">
                                  <table class="table no-margin">
                                      <thead>
                                          <tr>
                                              <th>Task ID</th>
                                              <th>Task Desc</th>
                                              <th>Status</th>
                                              <th>Approved Date</th>
                                          </tr>
                                      </thead>
                                      <tbody>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                              <td>Call of Duty IV</td>
                                              <td><span class="label label-success">Shipped</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                              <td>Samsung Smart TV</td>
                                              <td><span class="label label-warning">Pending</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                              <td>iPhone 6 Plus</td>
                                              <td><span class="label label-danger">Completed</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                              <td>Samsung Smart TV</td>
                                              <td><span class="label label-info">Processing</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                              <td>Samsung Smart TV</td>
                                              <td><span class="label label-warning">Pending</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                              <td>iPhone 6 Plus</td>
                                              <td><span class="label label-danger">Completed</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                              <td>Call of Duty IV</td>
                                              <td><span class="label label-success">Shipped</span></td>
                                              <td>
                                                  <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                              </td>
                                          </tr>
                                      </tbody>
                                  </table>
                              </div>
                              <!-- /.table-responsive -->
                          </div>
                          <!-- /.box-body -->
                          <div class="box-footer clearfix">
                              <ul class="pagination pagination-sm no-margin pull-right">
                                  <li><a href="#">«</a></li>
                                  <li><a href="#">1</a></li>
                                  <li><a href="#">2</a></li>
                                  <li><a href="#">3</a></li>
                                  <li><a href="#">»</a></li>
                              </ul>
                              <!-- <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a> -->
                              <!-- <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">View All Orders</a> -->
                          </div>
                          <!-- /.box-footer -->
                      </div>
                      <!-- /.box -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4" style="display:none">
                      <!-- Info Boxes Style 2 -->
                      <div class="info-box bg-yellow">
                          <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Inventory</span>
                              <span class="info-box-number">5,200</span>
                              <div class="progress">
                                  <div class="progress-bar" style="width: 50%"></div>
                              </div>
                              <span class="progress-description">
                                  50% Increase in 30 Days
                              </span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                      <div class="info-box bg-green">
                          <span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Mentions</span>
                              <span class="info-box-number">92,050</span>
                              <div class="progress">
                                  <div class="progress-bar" style="width: 20%"></div>
                              </div>
                              <span class="progress-description">
                                  20% Increase in 30 Days
                              </span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                      <div class="info-box bg-red">
                          <span class="info-box-icon"><i class="ion ion-ios-cloud-download-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Downloads</span>
                              <span class="info-box-number">114,381</span>
                              <div class="progress">
                                  <div class="progress-bar" style="width: 70%"></div>
                              </div>
                              <span class="progress-description">
                                  70% Increase in 30 Days
                              </span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                      <div class="info-box bg-aqua">
                          <span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>
                          <div class="info-box-content">
                              <span class="info-box-text">Direct Messages</span>
                              <span class="info-box-number">163,921</span>
                              <div class="progress">
                                  <div class="progress-bar" style="width: 40%"></div>
                              </div>
                              <span class="progress-description">
                                  40% Increase in 30 Days
                              </span>
                          </div>
                          <!-- /.info-box-content -->
                      </div>
                      <!-- /.info-box -->
                      <div class="box box-default">
                          <div class="box-header with-border">
                              <h3 class="box-title">Browser Usage</h3>
                              <div class="box-tools pull-right">
                                  <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                      <i class="fa fa-minus"></i>
                                  </button>
                                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                              </div>
                          </div>
                          <!-- /.box-header -->
                          <div class="box-body">
                              <div class="row">
                                  <div class="col-md-8">
                                      <div class="chart-responsive">
                                          <canvas id="pieChart" height="150"></canvas>
                                      </div>
                                      <!-- ./chart-responsive -->
                                  </div>
                                  <!-- /.col -->
                                  <div class="col-md-4">
                                      <ul class="chart-legend clearfix">
                                          <li><i class="fa fa-circle-o text-red"></i> Chrome</li>
                                          <li><i class="fa fa-circle-o text-green"></i> IE</li>
                                          <li><i class="fa fa-circle-o text-yellow"></i> FireFox</li>
                                          <li><i class="fa fa-circle-o text-aqua"></i> Safari</li>
                                          <li><i class="fa fa-circle-o text-light-blue"></i> Opera</li>
                                          <li><i class="fa fa-circle-o text-gray"></i> Navigator</li>
                                      </ul>
                                  </div>
                                  <!-- /.col -->
                              </div>
                              <!-- /.row -->
                          </div>
                          <!-- /.box-body -->
                          <div class="box-footer no-padding">
                              <ul class="nav nav-pills nav-stacked">
                                  <li>
                                      <a href="#">
                                          United States of America
                                          <span class="pull-right text-red"><i class="fa fa-angle-down"></i> 12%</span>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="#">India <span class="pull-right text-green"><i class="fa fa-angle-up"></i> 4%</span></a>
                                  </li>
                                  <li>
                                      <a href="#">
                                          China
                                          <span class="pull-right text-yellow"><i class="fa fa-angle-left"></i> 0%</span>
                                      </a>
                                  </li>
                              </ul>
                          </div>
                          <!-- /.footer -->
                      </div>
                      <!-- /.box -->
                      <!-- PRODUCT LIST -->
                      <div class="box box-primary">
                          <div class="box-header with-border">
                              <h3 class="box-title">Recently Added Products</h3>
                              <div class="box-tools pull-right">
                                  <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                      <i class="fa fa-minus"></i>
                                  </button>
                                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                              </div>
                          </div>
                          <!-- /.box-header -->
                          <div class="box-body">
                              <ul class="products-list product-list-in-box">
                                  <li class="item">
                                      <div class="product-img">
                                          <img src="../img/default-50x50.gif" alt="Product Image">
                                      </div>
                                      <div class="product-info">
                                          <a href="javascript:void(0)" class="product-title">
                                              Samsung TV
                                              <span class="label label-warning pull-right">$1800</span>
                                          </a>
                                          <span class="product-description">
                                              Samsung 32" 1080p 60Hz LED Smart HDTV.
                                          </span>
                                      </div>
                                  </li>
                                  <!-- /.item -->
                                  <li class="item">
                                      <div class="product-img">
                                          <img src="../img/default-50x50.gif" alt="Product Image">
                                      </div>
                                      <div class="product-info">
                                          <a href="javascript:void(0)" class="product-title">
                                              Bicycle
                                              <span class="label label-info pull-right">$700</span>
                                          </a>
                                          <span class="product-description">
                                              26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                                          </span>
                                      </div>
                                  </li>
                                  <!-- /.item -->
                                  <li class="item">
                                      <div class="product-img">
                                          <img src="../img/default-50x50.gif" alt="Product Image">
                                      </div>
                                      <div class="product-info">
                                          <a href="javascript:void(0)" class="product-title">Xbox One <span class="label label-danger pull-right">$350</span></a>
                                          <span class="product-description">
                                              Xbox One Console Bundle with Halo Master Chief Collection.
                                          </span>
                                      </div>
                                  </li>
                                  <!-- /.item -->
                                  <li class="item">
                                      <div class="product-img">
                                          <img src="../img/default-50x50.gif" alt="Product Image" />
                                      </div>
                                      <div class="product-info">
                                          <a href="javascript:void(0)" class="product-title">
                                              PlayStation 4
                                              <span class="label label-success pull-right">$399</span>
                                          </a>
                                          <span class="product-description">
                                              PlayStation 4 500GB Console (PS4)
                                          </span>
                                      </div>
                                  </li>
                                  <!-- /.item -->
                              </ul>
                          </div>
                          <!-- /.box-body -->
                          <div class="box-footer text-center">
                              <a href="javascript:void(0)" class="uppercase">View All Products</a>
                          </div>
                          <!-- /.box-footer -->
                      </div>
                      <!-- /.box -->
                  </div>
                  <!-- /.col -->
              </div>
              <!-- /.row -->
          </section>
          <!-- /.content -->
</asp:Content>
