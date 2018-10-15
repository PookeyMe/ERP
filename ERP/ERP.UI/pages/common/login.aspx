<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ERP.UI.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!-- Tell the browser to be responsive to screen width -->

    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <link rel="stylesheet" href="../../plugins/iCheck/all.css" />
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css" />
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link rel="stylesheet" href="../../dist/css/skins/skin-blue.min.css" />
    <link rel="stylesheet" href="../../css/style.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-blue sidebar-mini" style="height: auto;">
    <form id="form1" runat="server">
        <div>
            <div class="wrapper" style="height: auto;">
                <div class="login-head">
                    <div class="pull-left login-logo" style="width:300px;">
                        <a href="#" style="display: inline-block; width: 25.25%">
                            <img src="../../img/logo.png" alt="" class="img-responsive">
                        </a>
                        <span>虎虎生威</span>
                    </div>
                    <div class="pull-left login-title">
                        <span class="title-zh">E R P 管 理 后 台</span><br>
                        <span class="title-en">ERP management platform</span>
                    </div>
                </div>
                <!---->
                <div class="login-body">
                    <img src="../../img/白底.png" alt="" class="img-responsive">
                    <div class="body-text">
                        <p class="body-title"><span style="color: #1d5ab2">ERP</span>管理后台</p>
                        <p class="body-descript">轻松&nbsp;高效&nbsp;智能</p>
                    </div>
                    <div class="body-back">
                        <img src="../../img/图片.png" alt="" class="img-responsive">
                    </div>
                    <div class="body-form">
                        <div class="log-form">
                            <br>
                            <div class="cell" style="margin-top: 14.4%;">
                                <input type="text" name="username" value="" id="username" class="text">
                                <label for="username">用户名</label>
                            </div>
                            <div class="cell">
                                <input type="text" name="username" value="" id="username" class="text">
                                <label for="username">密码</label>
                            </div>
                            <div class="cell remember">
                                <div class="pull-left">
                                    <input type="checkbox" name="" value="" class="minimal" style="opacity: 0; position: absolute;" checked>
                                    <font>记住我</font>
                                </div>
                                <div class="pull-right">
                                    <a href="">忘记密码</a>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <button type="button" class="btn btn-xs">登录</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<script src="../../plugins/morris/morris.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- bootstrap datepicker -->
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../../plugins/iCheck/icheck.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<script src="../../dist/js/demo.js"></script>
<script>
    $(function () {
        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
    });
</script>
</html>
