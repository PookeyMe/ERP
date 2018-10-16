<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ERP.UI.pages.common.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>生产管理系统</title>
    <link href="lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <script src="lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
    <%-- <script src="lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>--%>
    <script src="indexdata.js" type="text/javascript"></script>
    <script type="text/javascript">
        var tab = null;
        var accordion = null;
        var tree = null;
        $(function () {

            //布局
            $("#layout1").ligerLayout({ leftWidth: 205, height: '100%', heightDiff: -34, space: 4, onHeightChanged: f_heightChanged });

            var height = $(".l-layout-center").height();

            //Tab
            $("#framecenter").ligerTab({ height: height });

            //面板
            $("#accordion1").ligerAccordion({ height: height - 24, speed: null });

            $(".l-link").hover(function () {
                $(this).addClass("l-link-over");
            }, function () {
                $(this).removeClass("l-link-over");
            });

            $.ajax({
                type: 'POST',
                cache: false,
                dataType: 'json',
                url: "indexdata.aspx",
                data: {

                },
                success: function (data, textStatus) {
                    $("#tree0").ligerTree({
                        data: data.MyObject0,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree1").ligerTree({
                        data: data.MyObject1,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree2").ligerTree({
                        data: data.MyObject2,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree3").ligerTree({
                        data: data.MyObject3,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree4").ligerTree({
                        data: data.MyObject4,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree5").ligerTree({
                        data: data.MyObject5,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree6").ligerTree({
                        data: data.MyObject6,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });
                    $("#tree7").ligerTree({
                        data: data.MyObject7,
                        checkbox: false,
                        slide: false,
                        nodeWidth: 120,
                        attribute: ['nodename', 'url'],
                        onSelect: function (node) {
                            if (!node.data.url) return;
                            var tabid = $(node.target).attr("tabid");
                            if (!tabid) {
                                tabid = new Date().getTime();
                                $(node.target).attr("tabid", tabid)
                            }
                            f_addTab(tabid, node.data.text, node.data.url);
                        }
                    });

                }
            });


            //树


            tab = $("#framecenter").ligerGetTabManager();
            accordion = $("#accordion1").ligerGetAccordionManager();
            //tree = $("#tree1").ligerGetTreeManager();
            $("#pageloading").hide();

        });
        function f_heightChanged(options) {
            if (tab)
                tab.addHeight(options.diff);
            if (accordion && options.middleHeight - 24 > 0)
                accordion.setHeight(options.middleHeight - 24);
        }
        function f_addTab(tabid, text, url) {
            //alert(url);
            tab.addTabItem({ tabid: tabid, text: text, url: url });
        } 
             
            
    </script>
    <style type="text/css">
        body, html
        {
            height: 100%;
        }
        body
        {
            padding: 0px;
            margin: 0;
            overflow: hidden;
        }
        .l-link
        {
            display: block;
            height: 26px;
            line-height: 26px;
            padding-left: 10px;
            text-decoration: underline;
            color: #333;
        }
        .l-link2
        {
            text-decoration: underline;
            color: white;
            margin-left: 2px;
            margin-right: 2px;
        }
        .l-layout-top
        {
            background: #102A49;
            color: White;
        }
        .l-layout-bottom
        {
            background: #E5EDEF;
            text-align: center;
        }
        #pageloading
        {
            position: absolute;
            left: 0px;
            top: 0px;
            background: white url('loading.gif') no-repeat center;
            width: 100%;
            height: 100%;
            z-index: 99999;
        }
        .l-link
        {
            display: block;
            line-height: 22px;
            height: 22px;
            padding-left: 16px;
            border: 1px solid white;
            margin: 4px;
        }
        .l-link-over
        {
            background: #FFEEAC;
            border: 1px solid #DB9F00;
        }
        .l-winbar
        {
            background: #2B5A76;
            height: 30px;
            position: absolute;
            left: 0px;
            bottom: 0px;
            width: 100%;
            z-index: 99999;
        }
        .space
        {
            color: #E7E7E7;
        }
        /* 顶部 */
        .l-topmenu
        {
            margin: 0;
            padding: 0;
            height: 81px;
            line-height: 81px; /*background: url('lib/images/top.jpg');*/
            background: url('/Manage/Images/TOP/Main_02.png');
            position: relative;
            border-top: 1px solid #1D438B;
        }
        .l-topmenu-logo
        {
            font-family: @Adobe 仿宋 Std R;
            font-size: 20px;
            color: #E7E7E7;
            padding-left: 0px;
            padding-top: 0px;
            line-height: 26px; /*background: url('lib/images/topicon.gif') no-repeat 10px 5px;*/
        }
        .l-topmenu-welcome
        {
            position: absolute;
            height: 24px;
            line-height: 24px;
            right: 30px;
            top: 2px;
            color: #070A0C;
        }
        .l-topmenu-welcome a
        {
            color: #E7E7E7;
            text-decoration: underline;
        }
        span
        {
            color: red;
        }
    </style>
</head>
<body style="padding: 0px; background: #EAEEF5;">
    <form id="form1" runat="server">
    <div id="pageloading">
    </div>
    <div id="topmenu" class="l-topmenu">
        <div class="l-topmenu-logo">
            <div style="position: absolute; top: 20px; left: 30px;">
                生产管理系统
            </div>
        </div>
        <script language="javascript">
            function displayToName() {
                if (document.getElementById("divToName").style.display === "none")
                    document.getElementById("divToName").style.display = "block";
                else
                    document.getElementById("divToName").style.display = "none";
            }
        </script>
        <div class="l-topmenu-welcome" style="margin-top: 20px; font-size: 15px; font-weight: bolder">
            <a href="javascript:f_addTab('home','我的主页','../MainNormal.aspx')">
                <asp:Label ID="lbname" runat="server" Text="" ForeColor="White"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="linkOut" class="l-link2" runat="server" OnClick="linkOut_Click">注销</asp:LinkButton>
        </div>
    </div>
    <div id="layout1" style="width: 99.2%; margin: 0 auto; margin-top: 4px;">
        <div position="left" title="主要菜单" id="accordion1" runat="server">
        </div>
        <div position="center" id="framecenter">
            <div tabid="home" title="我的主页" style="height: 300px">
                <iframe frameborder="0" name="home" id="home" src="FirstPage.aspx"></iframe>
            </div>
        </div>
    </div>
    <div style="height: 32px; line-height: 32px; text-align: center;">
        生产管理系统
    </div>
    <div style="display: none">
    </div>
    <img id="imgSessionAlive" width="1" height="1" />
    <script type="text/javascript">
        // Helper variable used to prevent caching on some browsers
        var counter;
        counter = 0;

        function KeepSessionAlive() {
            // Increase counter value, so we'll always get unique URL
            counter++;

            // Gets reference of image
            var img = document.getElementById("imgSessionAlive");

            // Set new src value, which will cause request to server, so
            // session will stay alive
            // img.src = "../RefreshSessionState.aspx?c=" + counter;

            // Schedule new call of KeepSessionAlive function after 60 seconds
            // setTimeout(KeepSessionAlive, 60000);
        }

        // Run function for a first time
        KeepSessionAlive();
    </script>
    </form>
</body>
</html>
