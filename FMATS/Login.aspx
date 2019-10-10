<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FMATS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>File Tracking | Login</title>

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.6 -->
    <link href="Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="Content/AdminLTE.css" />
    <!-- iCheck -->
    <!--<link rel="stylesheet" href="plugins/iCheck/square/blue.css">-->
    <link href="Content/Plugins/bootstrap-validator/dist/css/bootstrapValidator.css" rel="stylesheet" />
    <!--<link rel="stylesheet" href="plugins/bootstrap-validator/dist/css/bootstrapValidator.css"/>-->
    <link href="Content/global.css" rel="stylesheet" type="text/css" />
    <link href="Content/skins/_all-skins.css" rel="stylesheet" />

</head>

<body class="hold-transition login-page" style="background: url(img/home-bg.jpg);">
    <div class="login-box">
        <div class="login-logo">
            <img src="img/gon_logo.png" width="150" height="102" alt="" />
        </div>
        <div class="login-box-body evLoginBox">
            <p class="login-box-msg">File Tracking System Login</p>
            <form id="Evolutyzlogin" runat="server">
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </asp:PlaceHolder>
                <div class="form-group has-feedback">
                    <input type="email" id="email" name="email" runat="server" maxlength="150" class="form-control" placeholder="email" />
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" runat="server" id="password" maxlength="15" name="password" class="form-control" placeholder="password" />
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <!-- <div class="checkbox icheck"> -->
                        <!-- <label> -->
                        <!-- <input type="checkbox"> Remember Me -->
                        <!-- </label> -->
                        <!-- </div> -->
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <%--<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>--%>
                        <asp:Button ID="btn_login" CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" runat="server" OnClick="btn_login_Click" />
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <p><a href="ForgotPassword.aspx">Can't access my account</a></p>
            <%-- <p>New Evolutyz'en contact IT Admin for login details</p>--%>
        </div>
        <!-- /.login-box-body -->
    </div>

    <!-- /.login-box -->
    <!-- jQuery 2.2.3 -->
    <script src="Scripts/jquery-1.10.2.js"></script>
   
    <script src="Scripts/bootstrap.js"></script>
    
    <script src="Content/Plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>
  
    <script type="text/javascript">
        $(document).ready(function () {

            $('#<%=Evolutyzlogin.ClientID%>').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {

                    email: {
                        validators: {
                            notEmpty: {
                                message: 'The email address is required and can\'t be empty'
                            },
                            email: {
                                message: 'The input is not a valid email address'
                            }
                        }
                    },


                    password: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and can\'t be empty'
                            },
                            identical: {
                                field: 'password',
                                field: 'password',
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
