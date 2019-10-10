<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FMATS.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>File Tracking  | Register</title>
    <!-- Tell the browser to be responsive to screen width -->
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
<body style="background: url(img/home-bg.jpg);">

    <div class="row" style="margin-top: 50px;">
        <div class="col-sm-offset-3 col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i>Register </h3>
                </div>
                <div class="panel-body">
                    <form id="Registerform" method="post" runat="server" class="form-horizontal bv-form" novalidate="novalidate">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="ErrorMessage" />
                        </p>
                        <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtname">Name:</label>
                            <div class="col-sm-8">
                                <input type="text" name="txtname" runat="server" class="form-control" id="txtname" placeholder="Name" data-bv-field="txtname" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtname" data-bv-result="NOT_VALIDATED" style="display: none;">The Name is required and can't be empty</small>
                            </div>
                        </div>

                        <%--                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtname">Category:</label>
                            <div class="col-sm-8">--%>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="ddlCategory">Category:</label>
                            <div class="col-sm-8">
                                <asp:DropDownList ID="ddlCat" runat="server" AutoPostBack="true"  CssClass="form-control" name="ddlCategory" data-bv-field="ddlCategory" ClientIDMode="Static">
                                </asp:DropDownList>
                                <%--<select class="form-control" id="ddlCategory" runat="server" name="ddlCategory" data-bv-field="ddlCategory">
                                    <option value="">None</option>
                                    <option value="1">Individual</option>
                                    <option value="2">State Department</option>
                                    <option value="3">Associations</option>
                                    <option value="4">Other</option>

                                </select>--%>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ddlCategory" data-bv-result="NOT_VALIDATED" style="display: none;">Please select atleast one Category</small>
                            </div>
                        </div>


                        <%--    </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtemail">Email:</label>
                            <div class="col-sm-8">
                                <input type="text" name="txtemail" maxlength="150" runat="server" class="form-control" id="txtemail" placeholder="Enter Email" data-bv-field="txtemail" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtemail" data-bv-result="NOT_VALIDATED" style="display: none;">The email is required and can't be empty</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtphone">Phone:</label>
                            <div class="col-sm-8">
                                <input type="number" name="txtphone" runat="server" class="form-control" id="txtphone" placeholder="Enter phone" data-bv-field="txtphone" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtphone" data-bv-result="NOT_VALIDATED" style="display: none;">The phone is required and can't be empty</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtdist">District:</label>
                            <div class="col-sm-8">
                                <input type="text" name="txtdist" runat="server" class="form-control" id="txtdist" placeholder="Enter district" data-bv-field="txtdist" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtdist" data-bv-result="NOT_VALIDATED" style="display: none;">The Disctrict is required and can't be empty</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtAddress">Address:</label>
                            <div class="col-sm-8">
                                <input type="text" name="txtAddress" runat="server" class="form-control" id="txtAddress" placeholder="Enter Address" data-bv-field="txtAddress" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtAddress" data-bv-result="NOT_VALIDATED" style="display: none;">The Address is required and can't be empty</small>
                            </div>
                        </div>




                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtNewPassword">Enter New Password:</label>
                            <div class="col-sm-8">
                                <input type="password" name="txtNewPassword" runat="server" class="form-control" id="txtNewPassword" placeholder="Enter New Password" data-bv-field="txtNewPassword" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtNewPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password is required and can't be empty</small><small class="help-block" data-bv-validator="identical" data-bv-for="txtNewPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password and its confirm are not the same</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="txtConfirmPassword">Confirm Password:</label>
                            <div class="col-sm-8">
                                <input type="password" name="txtConfirmPassword" runat="server" class="form-control" id="txtConfirmPassword" placeholder="Confirm password" data-bv-field="txtConfirmPassword" />
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="txtConfirmPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The confirm password is required and can't be empty</small><small class="help-block" data-bv-validator="identical" data-bv-for="txtConfirmPassword" data-bv-result="NOT_VALIDATED" style="display: none;">The password and its confirm are not the same</small>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                                <asp:Button ID="btn_register" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btn_register_Click" />
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
            $('#Registerform').bootstrapValidator({

                fields: {
                    txtname: {
                        validators: {
                            notEmpty: {
                                message: 'The Name is required and can\'t be empty'
                            }
                        }
                    },
                    txtemail: {
                        validators: {
                            notEmpty: {
                                message: 'The Email is required and can\'t be empty'
                            },
                            emailAddress: {
                                message: 'The input is not a valid email address'
                            }
                        }
                    },
                    txtphone: {
                        validators: {
                            notEmpty: {
                                message: 'The Phone is required and can\'t be empty'
                            },
                            stringLength: {
                                min: 10,
                                max: 11,
                                message: 'Please enter valid phone number'
                            },
                            regexp: {
                                regexp: /^[0-9]+$/,
                                message: 'Please enter valid phone number'
                            }
                        }

                    },
                    ddlCategory: {
                        validators: {
                            notEmpty: {
                                message: 'Please select atleat one category'
                            }
                        }
                    },
                    txtdist: {
                        validators: {
                            notEmpty: {
                                message: 'The Disctrict is required and can\'t be empty'
                            }
                        }
                    },
                    txtAddress: {
                        validators: {
                            notEmpty: {
                                message: 'The Address is required and can\'t be empty'
                            }
                        }
                    },

                    txtNewPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and can\'t be empty'
                            },
                            identical: {
                                field: 'txtConfirmPassword',
                                message: 'The password and its confirm are not the same'
                            }
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
