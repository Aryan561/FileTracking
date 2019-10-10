<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="FMATS.Employee.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content">
	
     <ol class="breadcrumb"   style="background-color: white;">
        <li><a href="index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Profile</li>
      </ol>
	  
	 <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i> Personal Information </h3>
                </div>
                <div class="panel-body">
                    <div style="padding-right: 16px; position: relative;">
                        <form id="frmStudentProfile" method="post" action="" class="form-horizontal">
                            <div class="row">
                                <div class="col-sm-9">
                                    <div class="col-sm-6">

                                        <div class="form-group has-feedback">
                                            <label class="col-lg-4 control-label" style="text-align:left;">Employee ID</label>
                                            <div class="col-lg-8"><label class="control-label" id="lbl_StudentID">null</label></div>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-4 control-label" style="text-align:left;">First Name</label>
                                            <div class="col-lg-8"><input type="text" class="form-control" id="FirstName" name="FirstName" tabindex="1" required="" data-bv-notempty-message=" " data-bv-field="FirstName"><small data-bv-validator="notEmpty" class="help-block" style="display: none;"> </small></div>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-4 control-label" style="text-align:left;">Gender</label>
                                            <div class="col-lg-8">
                                                <div class="radio">
                                                    <label class="i-grey-square"><div class="iradio_square-grey checked" aria-checked="true" aria-disabled="false" style="position: relative;"><input type="radio" id="rbGenderMale" name="gender" value="0" class="i-grey-square" data-bv-field="gender" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>Male</label>&nbsp;&nbsp;&nbsp;
                                                    <label><div class="iradio_square-grey" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="radio" id="rbGenderFemale" name="gender" value="1" class="i-grey-square" data-bv-field="gender" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>Female</label>
                                                </div>
                                            <small data-bv-validator="notEmpty" class="help-block" style="display: none;"> </small></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-5 control-label" style="text-align:left;">Email address</label>
                                            
                                            <div class="col-lg-7"><input class="form-control" name="email" id="email" type="email" tabindex="4" required="" data-bv-notempty-message=" " data-bv-field="email"><small data-bv-validator="notEmpty" class="help-block" style="display: none;"> </small><small data-bv-validator="emailAddress" class="help-block" style="display: none;">In valid email</small></div>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-5 control-label" style="text-align:left;">Last Name</label>
                                            <div class="col-lg-7"><input type="text" class="form-control" id="LastName" name="LastName" tabindex="2" required="" data-bv-notempty-message=" " data-bv-field="LastName"><small data-bv-validator="notEmpty" class="help-block" style="display: none;"> </small></div>
                                        </div>
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-5 control-label" style="text-align:left;">Mobile number</label>
                                            <div class="col-lg-7"><input type="text" class="form-control" id="MobileNumber" name="MobileNumber" maxlength="10" tabindex="3" required="" data-bv-notempty-message=" " data-bv-phone="true" data-bv-phone-message="Invalid Mobile Number" data-bv-field="MobileNumber"><small data-bv-validator="notEmpty" class="help-block" style="display: none;"> </small><small data-bv-validator="phone" class="help-block" style="display: none;">Invalid Mobile Number</small><small data-bv-validator="stringLength" class="help-block" style="display: none;">This value is not valid</small></div>
                                        </div>
                                    </div>

                                    


                                    <div class="col-sm-6">
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-4 control-label" style="text-align:left;">Alternative Email</label>
                                            <div class="col-lg-8"><input type="text" class="form-control" id="alternativeEmail" name="AlternativeEmail" tabindex="5" data-bv-notempty-message=" " data-bv-field="ParentEmail"></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group has-feedback">
                                            <label class="col-lg-5 control-label" style="text-align:left;">Alternative Mobile number</label>
                                            <div class="col-lg-7"><input type="text" class="form-control" id="AlternativeMobileNumber" name="AlternativeMobileNumber" maxlength="10" tabindex="6" data-bv-notempty-message=" " data-bv-phone="true" data-bv-phone-message="Invalid Mobile Number" data-bv-field="ParentMobileNumber"><small data-bv-validator="phone" class="help-block" style="display: none;">Invalid Mobile Number</small><small data-bv-validator="stringLength" class="help-block" style="display: none;">This value is not valid</small></div>
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" style="text-align:left;">About me</label>
                                            <div class="col-lg-7">
											<textarea id="txtAbout" name="txtAbout" tabindex="7" class="form-control border" data-bv-field="txtAbout"></textarea>
											</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <input type="hidden" id="hdnfuFileName">
                                    <div id="fuImageview">
                                        <label class="control-label" for="fileupload">Profile Picture</label><br>
                                        <img id="imgCourse" src="dist/img/avatar.png"  height="150" width="150"><br>
                                        <div class="input-group" style="margin-top:5px;">
                                            <span class="input-group-btn">
                                                <span class="btn btn-primary btn-file">
                                                    Change<input type="file" name="files[]" id="fileupload" data-bv-field="files[]">
                                                </span>
                                            </span>
                                        </div>
                                        <div id="progress" class="progress">
                                            <div class="progress-bar progress-bar-success"></div>
                                        </div>
                                        <div id="files" class="filesBg"></div>
                                        <br>
                                    </div>
                                </div>

                            </div>
                                                       
                            <!-- End primary color table -->
                            <div class="form-group">
                                <div class="col-lg-12 text-right">
                                    <!-- <input type="submit" id="btnUpdate" name="btnUpdate" class="btn btn-primary" value="Update" data-bv-field="btnUpdate"> -->
									 <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>


                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->

            </div>
            <!-- /.panel panel-default -->
        </div>
    </div>
    </section>
</asp:Content>
