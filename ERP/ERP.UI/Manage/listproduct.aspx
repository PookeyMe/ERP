<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listproduct.aspx.cs" Inherits="Manage_listproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link type="text/css" rel="stylesheet" href="../newcss/Reset.css" />
    <link type="text/css" rel="stylesheet" href="../newcss/Base.css" />
    <link href="../newcss/Forms.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="../newcss/Grid.css" />
    <link type="text/css" rel="stylesheet" href="../newcss/table.css" />
    <link type="text/css" rel="stylesheet" href="../newcss/start/jquery-ui-1.8.16.custom.css" />
    <script type="text/javascript" src="../newjs/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="../newjs/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="../newjs/jquery.ui.datepicker-zh-CN.js"></script>
    <script type="text/javascript" src="../newjs/MyTool/jquery-MyTool.js"></script>
    <script type="text/javascript" src="../newjs/MyTool/Validator.js"></script>
    <script type="text/javascript" src="../newjs/Grid.js"></script>
    <script type="text/javascript" src="../newjs/MyTool/Dialog.js"></script>
    <script type="text/javascript" src="../newjs/MyTool/MyBox.js"></script>
    <script type="text/javascript" src="../newjs/MessageBox.js"></script>
    <script type="text/jscript">
        //页面必须JavaScript
        //------------------------------------------------------
        window.onload = loaded;
        function loaded() {
            //alert(22);
            //top.SetFunID(2, 24);
            SetGrid2(52);
            top.closeLoading();
        }

        //------------------------------------------------------
        //添加--
        function Add() {
            top.showSetText("添加新产品", "editproduct.aspx", true, "500px", "680px");
        }
        //------------------------------------------------------
        //修改
        function Modify(id) {
            if (id == null) { id = $("#DataListDiv").attr("trIndex") };
            if (id == "" || id == "0") {
                alert("操作前，请选择一个记录！");
                return;
            }
            top.showSetText("修改员工信息", "editproduct.aspx?id=" + id, false, "500px", "480px");
        }
        //------------------------------------------------------
        //删除
        function Del(id) {
            if (id == null) { id = $("#DataListDiv").attr("trIndex") };
            if (id == "" || id == "0") {
                alert("操作前，请选择一个记录！");
                return;
            }

            if (!confirm("是否确定删除?")) { return false; }
            $.ajax
            (
                {
                    url: "/ajax.ashx",
                    data: "cmd=delproduct&id=" + id,
                    processData: false,
                    cache: false,
                    dataType: "text",
                    error: function () {
                        alert("连接服务器出错，请检查网络连接！");
                    },
                    success: function (xml) {

                        window.location.href = window.location.href;
                    },
                    complete: top.closeLoading
                }
            );
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 100%; margin: 0 auto;">
        <tr>
            <td id="LeftTree_TD" style="width: 170px; background-color: #161616; text-align: left;
                vertical-align: top; overflow: hidden;">
                <table cellspacing="0" cellpadding="0" style="width: 170px; height: 100%">
                    <tbody>
                        <tr id="TreeContent">
                            <td style="background-image: url('Images/TOP/LeftBJ.png'); background-repeat: no-repeat;
                                padding: 0px 10px 0px 8px; vertical-align: top; position: relative;">
                                <div id="UserInfoDiv" style="width: 100%; overflow: auto; height: 500px; color: white;
                                    text-align: right; vertical-align: top">
                                    <table cellspacing="0" cellpadding="0" style="width: 100%; color: white">
                                        <tbody>
                                            <tr>
                                                <td style="height: 30px; width: 70px; color: white">
                                                    用 户 名：
                                                </td>
                                                <td style="height: 30px; color: white">
                                                    <asp:Label ID="lbname" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                          <%--  <tr>
                                                <td style="height: 30px; color: white">
                                                    所在部门：
                                                </td>
                                                <td style="height: 30px; color: white">
                                                    综合部
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 30px; color: white">
                                                    岗 位：
                                                </td>
                                                <td style="height: 30px; color: white">
                                                    系统管理员
                                                </td>
                                            </tr>--%>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <!--框架页---->
            <td id="ChildIframes">
                <table style="width: 100%; height: 100%;">
                    <tr>
                        <td style="vertical-align: top; height: 25px; background-image: url('../newimages/Grid/grid3-hrow.gif')">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 20px; text-align: center" id="CloseLeftIMG_TD;">
                                        <img alt="" height="18" src="../newimages/Main/Line.gif" width="2" />
                                    </td>
                                    <td id="CloseLeftIMG_TD">
                                        <div style="text-align: right; height: 28px; line-height: 28px; vertical-align: bottom;
                                            padding-right: 10px">
                                           <%-- <input class="buttonY button" onclick="Add()" name="Button1" type="button" value="添加产品"
                                                style="width: 70px; vertical-align: middle" />
                                            <input class="buttonY button" onclick="Modify()" name="Button1" type="button" value="修改产品信息"
                                                style="width: 70px; vertical-align: middle" />
                                            <input class="buttonY button" onclick="Del()" name="Button1" type="button" value="删除产品"
                                                style="width: 70px; vertical-align: middle" />--%>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top">
                            <!--内容区域开始-->
                            <div id="DataListDiv" style="width: 100%; overflow: auto;">
                                <asp:GridView ID="gv" runat="server" CssClass="GridTable" AutoGenerateColumns="False"
                                    Width="100%" AllowPaging="True" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="smallimg" HeaderText="图片">
                                            <ItemStyle CssClass="Fix" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productcode" HeaderText="货号" />
                                        <asp:BoundField DataField="productname" HeaderText="产品名称" />
                                        <asp:BoundField DataField="format" HeaderText="规格" />
                                        <asp:BoundField DataField="unit" HeaderText="单位" />
                                        <asp:BoundField DataField="amount" HeaderText="库存数量" />
                                        <asp:BoundField DataField="buyprice" HeaderText="进货价" />
                                        <asp:BoundField DataField="price" HeaderText="销售价" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <!--内容区域结束-->
                            <div id="Pager" style="width: 100%; height: 25px;">
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
