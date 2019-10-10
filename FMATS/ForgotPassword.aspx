<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="FMATS.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>File Tracking | Forget Password</title>
    <%--<link rel="shortcut icon" href="http://evolutyz.com/wp-content/themes/evolutyz/favicon.ico">--%>
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
                    <h3 class="panel-title"><i class="fa fa-user"></i>Forget Password </h3>
                </div>
                <div class="panel-body">

                    <asp:PlaceHolder runat="server" ID="DisplayEmail" Visible="false">
                            <p class="text-info">
                                Please check your email to reset your password.
                            </p>
                        </asp:PlaceHolder>
                    <form id="Forgetpasswordform" runat="server" class="form-horizontal" action="#" method="post">

                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>

                        
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="txtEmailAddress">Enter Email Address :</label>
                            <div class="col-sm-9">
                                <input class="form-control" runat="server" name="txtemail" id="txtemail" placeholder="Enter Email Address">
                            </div>
                        </div>




                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-6">
                                <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" />
                                <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-danger" Text="Cancel" OnClick="btn_cancel_Click" />
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

    <div id="image" style="display:none;">
    <img src="img/GIF/default.gif" />
</div>

 

    <script src="Scripts/jquery-1.10.2.js"></script>
    <!--<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>-->
    <!-- Bootstrap 3.3.6 -->
    <script src="Scripts/bootstrap.js"></script>
    <!--<script src="bootstrap/js/bootstrap.min.js"></script>-->
    <!-- iCheck -->
    <!--<script src="plugins/iCheck/icheck.min.js"></script>-->
    <script src="Content/Plugins/bootstrap-validator/dist/js/bootstrapValidator.js"></script>
    <script src="Content/Plugins/block/jquery.blockUI.js"></script>
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

         

            //$('#btn_submit').click(function () {
               
              
                
            //});
        });
    </script>
    <script>
        function SetGifloader() {
            debugger;
            $.blockUI({
                message: $('#image')
            });
        }
        function Offgifloader() {
            debugger;
            setTimeout($.unblockUI, 2000);
        }
    </script>

    
<script type="text/javascript" charset="UTF-8" src="https://translate.googleapis.com/translate_static/js/element/main.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://translate.googleapis.com/translate_static/js/element/53/element_main.js"></script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

    
<script type="text/javascript">
                            function googleTranslateElementInit()
                            {
                                new google.translate.TranslateElement({
                                    pageLanguage: 'en',
                                    layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
                                    autoDisplay: false
                                }, 'google_translate_element');
                            }
                        </script>
</body>
</html>
