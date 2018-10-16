<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserIndex.aspx.cs" Inherits="Manage_UserIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../newcss/Main.css" rel="stylesheet" type="text/css" />
    <link href="../newcss/Tab.css" rel="stylesheet" type="text/css" />
    <script src="../newjs/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../newjs/PopMessage.js"></script>
    <script type="text/javascript" src="JS/Default.js"></script>
    <script type="text/javascript" src="JS/MyTab.js"></script>
    <script type="text/javascript">
        window.onload = onloading;
        function onloading() {
            // 起始标签
            AddFrameTab("listproduct.aspx", 0, "起始页", "/newImages/ICO/0.png");
            MenuCodeShow();
        }
        var xmllistcode;
        function MenuCodeShow() {
            //window.open("Xml/UserFunlist.aspx");
            $.ajax({
                url: "userajax.ashx",
                data: "cmd=menu",
                processData: false,
                cache: false,
                dataType: "xml",
                success: function (item) {
                    //                    if ($(item).find("isErr").text() == 1) {
                    //                        alert("超时，请重新登录!");
                    //                        SetWindowUrl('/');
                    //                    } else {
                    xmllistcode = $(item).find("item");
                    $(xmllistcode).each(
                            function (i) {
                                var ifun = $(this).attr("iFunID");
                                $("#Menu_" + ifun).show();
                                $("#Menu_" + ifun + "_").show();
                                $("#Menu_" + ifun + "_").attr("UrlPath", $(this).attr("cFunUrl"));
                            }
                        );
                    //                    }
                },
                error: function () {
                    alert("连接服务器出错，请检查网络连接！");
                }
            });
        }

        function SetMenu(obj, ImgURL) {

            $("#MenuList").attr("trIndex", $(obj).attr("id"));
            $(obj).attr("src", ImgURL);
        }
        function MimgReverse(imgObj, imgUrl) {
            if ($("#MenuList").attr("trIndex") == $(imgObj).attr("id")) { return; }
            imgObj.src = imgUrl;
        }
        
    </script>
    <link type="text/css" rel="stylesheet" href="../newcss/Reset.css" />
    <link type="text/css" rel="stylesheet" href="../newcss/Base.css" />
    <link type="text/css" rel="stylesheet" href="../newcss/forms.css" />
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
</head>
<body class="frame_class">
    <form id="form1" runat="server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td style="height: 71px; background-image: url('Images/TOP/Main_02.png');">
                <div style="background-image: url('Images/TOP/Main_01.png'); height: 75px; width: 100%;
                    position: relative; background-repeat: no-repeat">
                    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 75px; background-image: url('Images/TOP/Main_03.png');
                        background-repeat: no-repeat; background-position: right">
                        <tr>
                            <td style="width: 389px; height: 71px;">
                                &nbsp;
                            </td>
                            <td align="left" style="vertical-align: text-bottom; position: relative; padding-top: 5px">
                                <table style="width: 303; height: 61;" id="MenuList" trindex="">
                                    <tr style="cursor: pointer">
                                        <td style="width: 101px; display: none" id="Menu_1">
                                            <img id="ImgMenu1" alt="" onmouseover="showMenu('ImgMenu1','Images/Menu/Menu_Over_01.png','MenuList_1_');MimgReverse(this,'Images/Menu/Menu_Over_01.png')"
                                                onmouseout="hideListMenu('ImgMenu1','Images/Menu/Menu_02.png','MenuList_1_');MimgReverse(this,'Images/Menu/Menu_01.png')"
                                                out="Images/Menu/Menu_01.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_01.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_01.png');">
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_2">
                                            <img id="ImgMenu2" alt="" onmouseover="showMenu('ImgMenu2','Images/Menu/Menu_Over_02.png','MenuList_2_');MimgReverse(this,'Images/Menu/Menu_Over_02.png')"
                                                onmouseout="hideListMenu('ImgMenu2','Images/Menu/Menu_02.png','MenuList_2_');MimgReverse(this,'Images/Menu/Menu_02.png')"
                                                out="Images/Menu/Menu_02.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_02.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_02.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_3">
                                            <img id="ImgMenu3" alt="" onmouseover="showMenu('ImgMenu3','Images/Menu/Menu_Over_03.png','MenuList_3_');MimgReverse(this,'Images/Menu/Menu_Over_03.png')"
                                                onmouseout="hideListMenu('ImgMenu3','Images/Menu/Menu_02.png','MenuList_3_');MimgReverse(this,'Images/Menu/Menu_03.png')"
                                                out="Images/Menu/Menu_03.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_03.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_03.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_4">
                                            <img id="ImgMenu4" alt="" onmouseover="showMenu('ImgMenu4','Images/Menu/Menu_Over_04.png','MenuList_4_');MimgReverse(this,'Images/Menu/Menu_Over_04.png')"
                                                onmouseout="hideListMenu('ImgMenu4','Images/Menu/Menu_02.png','MenuList_4_');MimgReverse(this,'Images/Menu/Menu_04.png')"
                                                out="Images/Menu/Menu_04.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_04.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_04.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_5">
                                            <img id="ImgMenu5" alt="" onmouseover="showMenu('ImgMenu5','Images/Menu/Menu_Over_05.png','MenuList_5_');MimgReverse(this,'Images/Menu/Menu_Over_05.png')"
                                                onmouseout="hideListMenu('ImgMenu5','Images/Menu/Menu_02.png','MenuList_5_');MimgReverse(this,'Images/Menu/Menu_05.png')"
                                                out="Images/Menu/Menu_05.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_05.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_05.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_6">
                                            <img id="ImgMenu6" alt="" onmouseover="showMenu('ImgMenu6','Images/Menu/Menu_Over_06.png','MenuList_6_');MimgReverse(this,'Images/Menu/Menu_Over_06.png')"
                                                onmouseout="hideListMenu('ImgMenu6','Images/Menu/Menu_02.png','MenuList_6_');MimgReverse(this,'Images/Menu/Menu_06.png')"
                                                out="Images/Menu/Menu_06.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_06.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_06.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_7">
                                            <img id="ImgMenu7" alt="" onmouseover="showMenu('ImgMenu7','Images/Menu/Menu_Over_07.png','MenuList_7_');MimgReverse(this,'Images/Menu/Menu_Over_07.png')"
                                                onmouseout="hideListMenu('ImgMenu7','Images/Menu/Menu_02.png','MenuList_7_');MimgReverse(this,'Images/Menu/Menu_07.png')"
                                                out="Images/Menu/Menu_07.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_07.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_07.png');" />
                                        </td>
                                        <td style="width: 101px; display: none" id="Menu_8">
                                            <img id="ImgMenu8" alt="" onmouseover="showMenu('ImgMenu8','Images/Menu/Menu_Over_08.png','MenuList_8_');MimgReverse(this,'Images/Menu/Menu_Over_08.png')"
                                                onmouseout="hideListMenu('ImgMenu8','Images/Menu/Menu_02.png','MenuList_8_');MimgReverse(this,'Images/Menu/Menu_08.png')"
                                                out="Images/Menu/Menu_08.png" style="width: 101px; height: 61px" src="Images/Menu/Menu_08.png"
                                                onclick="SetMenu(this,'Images/Menu/Menu_Over_08.png');" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="MenuList_3_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu3','Images/Menu/Menu_Over_03.png','MenuList_3_')"
                                                onmouseout="hideListMenu('ImgMenu3','Images/Menu/Menu_03.png','MenuList_3_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_31_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_31_').attr('UrlPath'),31,'产品购买')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            产品购买
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="MenuList_4_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu4','Images/Menu/Menu_Over_04.png','MenuList_4_')"
                                                onmouseout="hideListMenu('ImgMenu4','Images/Menu/Menu_04.png','MenuList_4_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_41_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_41_').attr('UrlPath'),41,'赠品申领')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            赠品申领
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="MenuList_5_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu5','Images/Menu/Menu_Over_05.png','MenuList_5_')"
                                                onmouseout="hideListMenu('ImgMenu5','Images/Menu/Menu_05.png','MenuList_5_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_51_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_51_').attr('UrlPath'),51,'服务选择')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            服务选择
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_52_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_52_').attr('UrlPath'),52,'服务查询')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            服务查询
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="MenuList_6_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu6','Images/Menu/Menu_Over_06.png','MenuList_6_')"
                                                onmouseout="hideListMenu('ImgMenu6','Images/Menu/Menu_06.png','MenuList_6_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_61_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_61_').attr('UrlPath'),61,'产品订单')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            产品订单
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_62_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_62_').attr('UrlPath'),62,'赠品订单')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            赠品订单
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="MenuList_7_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu7','Images/Menu/Menu_Over_07.png','MenuList_7_')"
                                                onmouseout="hideListMenu('ImgMenu7','Images/Menu/Menu_07.png','MenuList_7_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_71_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_71_').attr('UrlPath'),71,'回款记录')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            回款记录
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_72_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_72_').attr('UrlPath'),72,'积分记录')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            积分记录
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="MenuList_8_" style="position: absolute; width: 102px; height: 144px; margin-top: 10px;
                                                cursor: pointer; display: none" onmouseover="showMenu('ImgMenu8','Images/Menu/Menu_Over_08.png','MenuList_8_')"
                                                onmouseout="hideListMenu('ImgMenu8','Images/Menu/Menu_08.png','MenuList_8_')">
                                                <table style="width: 100%; height: 10px; background-image: url('Images/Menu/MenuList_BG_02.png')">
                                                    <tr>
                                                        <td style="color: white; height: 10px; text-align: center;">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_81_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_81_').attr('UrlPath'),81,'资料修改')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            资料修改
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id="Menu_82_" style="width: 100%; height: 30px; background-image: url('Images/Menu/MenuList_BG_02.png');
                                                    display: none">
                                                    <tr onmouseover="changeClassName(this,'Menu_List_Over')" onmouseout="changeClassName(this,'')"
                                                        onclick="execFunUrl($('#Menu_82_').attr('UrlPath'),82,'密码修改')">
                                                        <td style="color: white; height: 30px; text-align: center;">
                                                            密码修改
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div style="height: 8px">
                                                    <img height="8" src="Images/Menu/MenuList_BG_03.png" style="width: 102px" alt="" /></div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <!--Tab--->
        <tr>
            <td style="height: 29px;">
                <table cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="background-image: url('Images/TOP/Main_07.png'); width: 7px">
                            <img height="29" src="Images/TOP/Main2_05.png" style="width: 7px" alt="" />
                        </td>
                        <td style="height: 29px; background-image: url('Images/TOP/LeftBJ.png'); width: 170px;
                            vertical-align: top">
                            <img style="width: 150px; height: 29px" src="Images/TOP/Main2_06.png" alt="" />
                        </td>
                        <td style="height: 20px; vertical-align: bottom; padding: 0px 0px 0px 0px; background-image: url('../newImages/Grid/Top_BJ.png');
                            border-bottom: 3px #000000 solid; text-align: left; vertical-align: top;">
                        </td>
                        <td id="zzFrameTabs" style="height: 29px; vertical-align: bottom; padding: 0px 0px 0px 0px;
                            background-image: url('../newImages/Grid/Top_BJ.png'); border-bottom: 3px #000000 solid;
                            text-align: left; vertical-align: bottom">
                        </td>
                        <td style="width: 9px; background-color: #636F7B; background-image: url('Images/TOP/Main2_12.png');">
                            <img height="1" src="/Images/Public/one.gif" style="width: 1px" alt="" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--Content---->
        <tr>
            <td>
                <%--  background-color: #636F7B"--%>
                <table style="width: 100%; height: 100%;">
                    <tr>
                        <td id="LeftTD_Line" style="width: 7px; background-image: url('Images/TOP/Main_13.png');
                            background-repeat: repeat-y; background-color: Black; vertical-align: top">
                            <img src="Images/TOP/Main_07.png" width="7">
                        </td>
                        <!--框架页---->
                        <td>
                            <div id="zzIframes" style="width: 100%; height: 800px; overflow: auto; vertical-align: top;">
                            </div>
                        </td>
                        <td style="width: 9px; background-color: #636F7B; background-image: url('Images/TOP/Main2_12.png');">
                            <img height="1" src="/Images/Public/one.gif" style="width: 1px" alt="" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--Bottom---->
        <tr>
            <td style="background-image: url('Images/TOP/Main_19.png'); background-color: black;
                height: 10px; background-repeat: repeat-x">
                <table cellpadding="0" cellspacing="0" style="width: 100%; height: 12px;">
                    <tr>
                        <td style="width: 16px; height: 10px;">
                            <img style="width: 177px; height: 12px" alt="" height="12" src="Images/TOP/Main_18.png">
                        </td>
                        <td>
                            <img style="width: 1px; height: 1px" height="1" src="/Images/Public/one.gif" width="1"
                                alt="" />
                        </td>
                        <td style="width: 13px; height: 10px;">
                            <img style="width: 15px; height: 12px" alt="" height="12" src="Images/TOP/Main_21.png"
                                width="15">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div id="dialogBoxDiv" style="position: absolute; top: 0px; left: 0px; width: 100%;
        height: 100%; text-align: center; z-index: 100099; line-height: 100%; display: none">
        <div style="filter: alpha(opacity=30); background-color: teal; position: absolute;
            top: 0px; left: 0px; width: 100%; height: 100%; -moz-opacity: 0.3; opacity: 0.3">
        </div>
        <iframe src="javascript:false" style="z-index: -1; position: absolute; top: 0px;
            left: 0px; width: 100%; height: 100%; filter: alpha(opacity=0); -moz-opacity: 0;
            opacity: 0"></iframe>
        <div id="dialogTable" style="position: relative; width: 90%; height: 80%; top: 0px;">
            <table cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">
                <tr>
                    <td style="height: 36px; vertical-align: text-top;">
                        <table cellspacing="0" cellpadding="0" style="width: 100%">
                            <tr>
                                <td style="height: 36px; width: 11px">
                                    <img style="width: 11px; height: 36px" height="36" src="../newImages/Dialog/Dialog_01.png"
                                        width="11">
                                </td>
                                <td style="background-image: url('../newImages/Dialog/Dialog_03.png'); position: relative">
                                    &nbsp;
                                    <div style="position: absolute; right: 0px; top: 1px">
                                        <img style="width: 25px; height: 20px; cursor: pointer;" onclick="maxDialog()" id="maxDialogImg"
                                            src="../newImages/Dialog/Dialog_04.png" width="25"><img onclick="closeSetText();"
                                                style="cursor: pointer; width: 43px; height: 20px" onmouseover="imgReverse(this,'../newImages/Dialog/Dialog1_05.png')"
                                                onmouseout="imgReverse(this,'../newImages/Dialog/Dialog0_05.png')" height="20"
                                                src="../newImages/Dialog/Dialog0_05.png" width="43">
                                    </div>
                                </td>
                                <td style="height: 36px; width: 11px">
                                    <img style="width: 11px; height: 36px" height="36" src="../newImages/Dialog/Dialog_05.png"
                                        width="11">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: text-top; background-color: #E1E1E1">
                        <table cellpadding="0" cellspacing="0" style="width: 100%; height: 100%; background-color: #E1E1E1">
                            <tr>
                                <td style="width: 4px; background-image: url('../newImages/Dialog/Dialog_06.png')">
                                    <img style="width: 4px; height: 13px" height="13" src="../newImages/Dialog/Dialog_06.png"
                                        width="4" alt="" />
                                </td>
                                <td>
                                    <iframe id="iFrameDialog" name="iFrameDialog" src="" style="width: 100%; height: 100%;
                                        float: middle; z-index: 100099; display: block" marginwidth="0" marginheight="0"
                                        border="0" frameborder="0" scrolling="no">浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。 </iframe>
                                </td>
                                <td style="width: 5px; background-image: url('../newImages/Dialog/Dialog_08.png')">
                                    <img style="width: 5px; height: 13px" height="13" src="../newImages/Dialog/Dialog_08.png"
                                        width="5">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 9px;">
                        <table cellspacing="0" cellpadding="0" style="width: 100%;">
                            <tr>
                                <td style="height: 9px; width: 10px">
                                    <img style="width: 10px; height: 9px" height="9" src="/newImages/Dialog/Dialog_44.png"
                                        width="10" alt="" />
                                </td>
                                <td style="height: 9px; background-image: url('../newImages/Dialog/Dialog_46.png')">
                                    <img style="width: 1px; height: 1px" height="1" src="Images/Public/one.gif" width="1">
                                </td>
                                <td style="height: 9px; width: 11px">
                                    <img style="width: 11px; height: 9px" height="9" src="/Images/Dialog/Dialog_48.png"
                                        width="11" alt="" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <!--菜单MenuList---->
    </form>
</body>
</html>
