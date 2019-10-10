<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FMATS.Employee.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>FileTrackingSystem | ChangePassword</title>
    <!-- Tell the browser to be responsive to screen width -->
   
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.6 -->
    <link href="../Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../Content/AdminLTE.css">
    <!-- iCheck -->
    <!--<link rel="stylesheet" href="plugins/iCheck/square/blue.css">-->
    <link href="../Content/Plugins/bootstrap-validator/dist/css/bootstrapValidator.css" rel="stylesheet" />
    <!--<link rel="stylesheet" href="plugins/bootstrap-validator/dist/css/bootstrapValidator.css"/>-->
    <link href="../Content/global.css" rel="stylesheet" type="text/css">
    <link href="../Content/skins/_all-skins.css" rel="stylesheet" />
    <!-- <link rel="stylesheet" href="dist/css/skins/skin-blue.css"> -->


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<%--<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>--%>
<body style="background: url(img/home-bg.jpg);">

    <div class="row" style="margin-top: 50px;">
        <div class="col-sm-offset-3 col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i>Change Password </h3>
                </div>
                <div class="panel-body">
                    <form id="changePasswordform" method="post" runat="server" class="form-horizontal bv-form" novalidate="novalidate">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="ErrorMessage" />
                        </p>
                        <p  class="text-primary" >
                            <asp:Label runat="server" ID="sucess_mess" Text="Your password has been changed"></asp:Label>
                        </p>
                        <h3 class="panel-title" runat="server" id="Sucessmess" title="Your password has been changed."></h3>
                        <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtOldPassword">Enter Old Password:</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" runat="server" name="txtOldPassword" id="txtOldPassword" placeholder="Enter Old Password" data-bv-field="txtOldPassword">
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtOldPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password is required and can't be empty</small><small class="help-block" data-bv-validator="identical" data-bv-for="txtOldPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password and its confirm are not the same</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtNewPassword">Enter New Password:</label>
                            <div class="col-sm-10">
                                <input type="password" name="txtNewPassword" runat="server" class="form-control" id="txtNewPassword" placeholder="Enter New Password" data-bv-field="txtNewPassword" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtNewPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password is required and can't be empty</small><small class="help-block" data-bv-validator="identical" data-bv-for="txtNewPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password and its confirm are not the same</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtConfirmPassword">Confirm Password:</label>
                            <div class="col-sm-10">
                                <input type="password" name="txtConfirmPassword" runat="server" class="form-control" id="txtConfirmPassword" placeholder="Confirm password" data-bv-field="txtConfirmPassword" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtConfirmPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The confirm password is required and can't be empty</small><small class="help-block" data-bv-validator="identical" data-bv-for="txtConfirmPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password and its confirm are not the same</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                                <asp:Button ID="btn_changePassword" runat="server" CssClass="btn btn-primary" Text="Reset" OnClick="btn_changePassword_Click" />
                                <%--<button type="submit" class="btn btn-danger">Cancel</button>--%>
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

   


    <script src="../Scripts/jquery-1.10.2.js"></script>
    <!--<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>-->
    <!-- Bootstrap 3.3.6 -->
    <script src="../Scripts/bootstrap.js"></script>
    <!--<script src="bootstrap/js/bootstrap.min.js"></script>-->
    <!-- iCheck -->
    <!--<script src="plugins/iCheck/icheck.min.js"></script>-->
    <script src="../Content/Plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>
    <!--<script type="text/javascript" src="plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>-->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#changePasswordform').bootstrapValidator({

                fields: {
                    txtOldPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and can\'t be empty'
                            }
                        }
                    },

                    txtNewPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and can\'t be empty'
                            }
                            //},
                            //identical: {
                            //    field: 'txtConfirmPassword',
                            //    message: 'The password and its confirm are not the same'
                            //}
                        }
                    },
                    txtConfirmPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The confirm password is required and can\'t be empty'
                            },
                            identical: {
                                field: 'txtNewPassword',
                                message: 'The password and its confirm are not the same'
                            }
                        }
                    }
                }
            });
        });

    </script>
</body>
</html>
