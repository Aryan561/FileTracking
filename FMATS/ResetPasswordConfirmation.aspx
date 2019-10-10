<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.cs" Inherits="FMATS.ResetPasswordConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>--%>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>FileTrackingSystem | Reset Password</title>
    
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.6 -->
    <link href="Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="Content/AdminLTE.css">
    <!-- iCheck -->
    <!--<link rel="stylesheet" href="plugins/iCheck/square/blue.css">-->
    <link href="Content/Plugins/bootstrap-validator/dist/css/bootstrapValidator.css" rel="stylesheet" />
    <!--<link rel="stylesheet" href="plugins/bootstrap-validator/dist/css/bootstrapValidator.css"/>-->
    <link href="Content/global.css" rel="stylesheet" type="text/css">
    <link href="Content/skins/_all-skins.css" rel="stylesheet" />
    <!-- <link rel="stylesheet" href="dist/css/skins/skin-blue.css"> -->


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body style="background: url(img/home-bg.jpg);">


    <div class="row" style="margin-top: 50px;">
        <div class="col-sm-offset-3 col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i>Reset Password </h3>
                </div>
                <div class="panel-body">


                    <form id="Resetpasswordform" runat="server" class="form-horizontal" action="#" method="post">

                        <div>
                            <p>Your password has been changed. Click
                                <asp:HyperLink ID="login" runat="server" NavigateUrl="Login.aspx">here</asp:HyperLink>
                                to login </p>
                        </div>
                    </form>


                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->

        </div>
        <!-- /.panel panel-default -->
    </div>


    <script src="Scripts/jquery-1.10.2.js"></script>
    <!--<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>-->
    <!-- Bootstrap 3.3.6 -->
    <script src="Scripts/bootstrap.js"></script>
    <!--<script src="bootstrap/js/bootstrap.min.js"></script>-->
    <!-- iCheck -->
    <!--<script src="plugins/iCheck/icheck.min.js"></script>-->
    <script src="Content/Plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>
    <!--<script type="text/javascript" src="plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>-->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#Forgetpasswordform').bootstrapValidator({

                fields: {

                    txtemail: {
                        validators: {
                            notEmpty: {
                                message: 'The email address is required and can\'t be empty'
                            },
                            txtemail: {
                                message: 'The input is not a valid email address'
                            }
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>
