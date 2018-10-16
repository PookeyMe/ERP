<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ERP.UI.pages.common.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<title>登陆</title>
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>会员管理软件 </title>
    <link href="/loginfiles/style.css" rel="stylesheet" type="text/css" />
    <script src="/loginfiles/jquery-1.js" type="text/javascript"></script>
    <script src="/loginfiles/center-plugin.js" type="text/javascript"></script>
    <script src="/loginfiles/framework.js" type="text/javascript"></script>
    <script src="/loginfiles/Cookies.js" type="text/javascript"></script>
    <script src="/loginfiles/progressBar.js" type="text/javascript"></script>
    <style type="text/css">
        #loader_container
        {
            text-align: center;
            position: absolute;
            top: 40%;
            width: 100%;
            left: 0;
            z-index: 999;
        }
        #loader
        {
            font-family: Tahoma,Helvetica,sans;
            font-size: 11.5px;
            color: #000000;
            background-color: #FFFFFF;
            padding: 10px 0 16px 0;
            margin: 0 auto;
            display: block;
            width: 170px;
            border: 1px solid #5a667b;
            text-align: left;
            z-index: 2;
        }
        #loader_bg
        {
            background-color: #e4e7eb;
            position: relative;
            top: 8px;
            left: 8px;
            height: 7px;
            width: 153px;
            font-size: 1px;
        }
        #progress
        {
            height: 5px;
            font-size: 1px;
            width: 1px;
            position: relative;
            top: 1px;
            left: 0px;
            background-color: #70940D;
        }
        #mask
        {
            position: absolute;
            top: 0;
            left: 0;
            width: expression(body.clientWidth);
            height: expression(body.clientHeight);
            filter: ALPHA(opacity=60);
            z-index: 1;
            visibility: hidden;
        }
    </style>
</head>
<body class="zDialogCon">
    <div id="loader_container" style="visibility: hidden">
        <div id="loader">
            <div id="loader_cue" align="center">
                页面正在加载中, 请稍等...</div>
            <div id="loader_bg">
                <div id="progress">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var isLogin = false;
        $(function () {
            $('.login_main').center();
            var businessAccount = jQuery.jCookie('BusinessAccount');
            if (businessAccount !== false) {
                $("#txtBusinessAccount").val(businessAccount);
            }
            var userAccount = jQuery.jCookie('UserAccount');
            if (userAccount !== false) {
                $("#txtUserAccount").val(userAccount);
            }
            if ($("#txtBusinessAccount").val() === "") {
                $("#txtBusinessAccount").focus();
            } else {
                $("#txtPassword").focus();
            }
            var userinfo = getCookie("UserInfo");
        })

        document.onkeydown = function (e) {
            if (!e) e = window.event;
            if ((e.keyCode || e.which) === 13) {
                login();
                return false;
            }
        }

        function login() {
            $("#login_button").focus();
            if (isLogin) {
                return;
            }
            var businessAccount = $("#txtBusinessAccount").val();
            if (businessAccount === "") {
                alert("请先输入帐号!");
                $("#txtBusinessAccount").focus();
                return;
            }

            var password = $("#txtPassword").val();
            if (password === "") {
                alert("请先输入密码!");
                $("#txtPassword").focus();
                return;
            }
            isLogin = true;
            toWait("正在登录系统,请稍候......");
            $.get("ajaxlogin.aspx?businessAccount=" + businessAccount + "&&password=" + password + "", {},
                                            function (data) {
                                                if (data !== "") {
                                                    //                                                    alert("123");
                                                    //                                                    jQuery.jCookie('BusinessAccount', businessAccount);
                                                    window.location.href = "/pages/common/index.aspx";
                                                }
                                                else {
                                                    isLogin = false;
                                                    remove_loading();
                                                    alert("账号或密码错误！");
                                                }
                                            });





        }

        function GetMemberSite() {
            var url = '';
            window.open(url);
        }




        function Clear() {
            $("#txtBusinessAccount").focus();
            $('#txtBusinessAccount').val('');
            $('#txtUserAccount').val('');
            $('#txtPassword').val('');
        }
    </script>
    <form id="form2" class="login_form" runat="server">
    <script type="text/javascript">
//<![CDATA[
        var theForm = document.forms['form1'];
        if (!theForm) {
            theForm = document.form1;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() !== false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
//]]>
    </script>
    <div style="margin-top: 143px; margin-left: 383.5px;" class="login_main">
        <div class="login_top2">
        </div>
        <div class="login_middle">
            <div id="login_middlecenter" class="login_middlecenter">
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="468">
                    <tbody>
                        <tr>
                            <td rowspan="3" width="163">
                                <%--  <img id="imgDx" alt="" src="loginfiles/dx_on.png" style="cursor: pointer;" onclick="RedirectDx();"
                                    height="56" width="150">--%><br>
                                <br>
                                <img id="imgWt" alt="" src="loginfiles/dx_on.png" style="cursor: pointer;" onclick="RedirectWt();"
                                    height="56" width="150"><br>
                            </td>
                            <td class="login_font14" align="right" height="48" width="74">
                            </td>
                            <td width="214">
                                <div class="login_business">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="login_font14" align="right" height="48">
                                账&nbsp;&nbsp;&nbsp;&nbsp;号：
                            </td>
                            <td>
                                <div class="login_user">
                                    <input class="textinput" name="txtBusinessAccount" id="txtBusinessAccount" type="text"
                                        runat="server"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="login_font14" align="right" height="48">
                                密&nbsp;&nbsp;&nbsp;&nbsp;码：
                            </td>
                            <td>
                                <div class="login_pass">
                                    <input class="textinput" id="txtPassword" onkeydown="if(event.keyCode==13){$('#btnLogin').focus();}"
                                        type="password" runat="server"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="2" align="right">
                                <br>
                                <input class="login_button" value="" id="Button1" onfocus="this.blur()" onclick="login();"
                                    onmouseover="this.className='login_button_mouseover'" onmouseout="this.className='login_button'"
                                    type="button">
                                <input value="" class="reset_button" onfocus="this.blur()" onclick="Clear();" onmouseover="this.className='reset_button_mouseover'"
                                    onmouseout="this.className='reset_button'" type="button">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="login_info" style="display: none;">
                    您的密码有误，请重新输入。</div>
            </div>
        </div>
        <div id="Div1" class="login_bottom">
            <table align="center" border="0" cellpadding="0" cellspacing="0" width="60%">
                <tbody>
                    <tr>
                        <td height="40">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="login_copyright">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript">
//<![CDATA[

        WebForm_InitCallback(); if (typeof (WebForm_CallbackComplete) === 'function') { WebForm_CallbackComplete = WebForm_CallbackComplete_SyncFixed; }//]]>
    </script>
    </form>
    <span style="position: absolute; z-index: 9999;" id="btc"></span>
    <div style="display: none;" id="cursorMessageDiv">
        &nbsp;</div>
</body>
</html>

