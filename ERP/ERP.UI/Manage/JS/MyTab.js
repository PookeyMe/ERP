//Tab

var MainTab = { CurrentFrameTabID: 0, FrameTabCount: 0, StyleSheetPath: "", TabWidth: 130 };
var ZZ_FrameTab =
	    {
	        //新建一个标签

	        AddNew: function (url, iFunID, cFunName, cFunSmallIcon) {
	            AddFrameTab(url, iFunID, cFunName, cFunSmallIcon);
	        },
	        //关闭当前标签
	        CloseCurrentTab: function () {
	            jQuery("#iFrameTab" + currentFrameTabId).find(".closeTab").click();
	        }
	    };
function GetCurrentIFrame() {
    return top.document.getElementById('_Iframe').contentWindow;
}
function RefreshCurrentIFrame() {
    //alert('_Iframe'+MainTab.CurrentFrameTabID);
    top.document.getElementById('_Iframe' + MainTab.CurrentFrameTabID).contentWindow.location = top.document.getElementById('_Iframe' + MainTab.CurrentFrameTabID).contentWindow.location.href;
    //top.document.getElementById('_Iframe').contentWindow.location.reload();
    //alert(2);
}
function RefreshCurrentIFrameChildIFrame() {
    //alert('_Iframe'+MainTab.CurrentFrameTabID);
    //top.document.getElementById('_Iframe'+MainTab.CurrentFrameTabID).contentWindow.location=top.document.getElementById('_Iframe'+MainTab.CurrentFrameTabID).contentWindow.location.href;
    //alert(2);
    top.document.getElementById('_Iframe' + MainTab.CurrentFrameTabID).contentWindow.document.getElementById('MainIframe').contentWindow.location.reload();

}
function RefreshCurrentIFrameChildWindows() {
    //alert('_Iframe'+MainTab.CurrentFrameTabID);
    //top.document.getElementById('_Iframe'+MainTab.CurrentFrameTabID).contentWindow.location=top.document.getElementById('_Iframe'+MainTab.CurrentFrameTabID).contentWindow.location.href;
    //alert(2);
    top.document.getElementById('_Iframe' + MainTab.CurrentFrameTabID).contentWindow.RefreshCurrentWindows();

}
function SetTabTitle(url) {


    //ZZ_FrameTab.AddNew();
}
function AddFrameTab(url, iFunID, cFunName, cFunSmallIcon) {
    //alert("添加"+MainTab.FrameTabCount);

    if (SwitchFrameTab(iFunID)) {
        //closeLoading();
        $("#zzIframes").html("<iframe  name='_Iframe" + iFunID + "' id='_Iframe'  marginwidth='0' marginheight='0'  border='0' frameborder='0'  scrolling='no'   src='" + url + "'  style='width: 100%; height: 100%; visibility: inherit; z-index: 2;'></iframe>");
    }
    else {
        MainTab.FrameTabCount++;
        var Ary = new Array();
        //Ary.push("<span class='zzTabBg' onclick='SwitchFrameTab(" + iFunID + ")' id='iFrameTab" + iFunID + "' ><table style='width:130px'><tr> ");
        //Ary.push("<td style='width:20px;;text-align:center'><img height='13' src='" + cFunSmallIcon + "' width='13' /></td><td>" + cFunName + "</td><td style='width:14px;cursor:pointer'  onclick='CloseFrameTab(" + iFunID + ")'><img height='14' src='../Images/Tab/TabCloseOnmouseover.gif' width='15' /></td>");
        //Ary.push("<td style='width:1px'><img  src='../Images/Tab/Tab_06.gif' /></td></tr></table></span>");

        Ary.push("<span class='zzTabBg' onMouseOver='$(\"#Close_" + iFunID + "\").show()' onMouseOut='$(\"#Close_" + iFunID + "\").hide()'   onclick='SwitchFrameTab(" + iFunID + ")' id='iFrameTab" + iFunID + "' ><span style='width:20px;position:relative;top:2px;left:3px;'><img   onclick='CloseFrameTab(" + iFunID + ")' id='Close_" + iFunID + "' style='display:none' height='14' src='../newImages/Tab/Tab_Buttom.png' width='14' /></span>" + cFunName + "</span>");

        $("#zzFrameTabs").prepend(Ary.join(""));
        //                alert(url);
        //        $("#zzIframes").prepend("<div style='width: 100%; height: 100%; ' id='Iframe" + iFunID + "'><iframe id='_Iframe" + iFunID + "'  marginwidth='0' marginheight='0'  border='0' frameborder='0'  scrolling='no'   src='" + url + "'  style='width: 100%; height: 100%; visibility: inherit; z-index: 2;'></iframe></div>");
        MainTab.CurrentFrameTabID = iFunID;
    }
    //    return;
    $("#zzIframes").html("<iframe  name='_Iframe" + iFunID + "' id='_Iframe'  marginwidth='0' marginheight='0'  border='0' frameborder='0'  scrolling='no'   src='" + url + "'  style='width: 100%; height: 100%; visibility: inherit; z-index: 2;'></iframe>");
    //GetLeftTree();



}
function CloseCurrentFrameTab() {
    CloseFrameTab(MainTab.CurrentFrameTabID);
}
function CloseFrameTab(Index) {
    //alert("删除"+Index);
    var Previous = null;
    var Next = null;
    $("#zzFrameTabs").children().each
             (
                function () {
                    if (Next != null) {
                        Next = this.id;
                        return false;
                    }
                    if (this.id == "iFrameTab" + Index) {

                        $("#iFrameTab" + Index).remove();
                        $("#Iframe" + Index).remove();
                        MainTab.FrameTabCount--;
                        Next = this.id;
                    }
                    else {
                        Previous = this.id;
                    }
                }
             )
    if (MainTab.CurrentFrameTabID == Index) {
        if (Previous != null) {
            var id = Previous.replace("iFrameTab", "");
            $("#Iframe" + id).show();
            $("#iFrameTab" + id).attr("class", "zzTabBg");
            MainTab.CurrentFrameTabID = id;
        }
        else {
            if (Next != null) {
                var id = Next.replace("iFrameTab", "");
                $("#Iframe" + id).show();
                $("#iFrameTab" + id).attr("class", "zzTabBg");
                MainTab.CurrentFrameTabID = id;
            }
        }

        if (MainTab.FrameTabCount < 1) {
            AddFrameTab("manage/index.aspx", 0, "起始页", "Images/ICO/71.png"); // 起始标签
        }
    }
}
function SwitchFrameTab(Index) {
    var IsOk = false;
    $("#zzFrameTabs").children().each
                (
                    function () {
                        if (this.id == "iFrameTab" + Index) {

                            //                            $("#Iframe" + this.id.replace("iFrameTab", "")).show();
                            //                            $(this).attr("class", "zzTabBg");
                            IsOk = true;
                            //                            MainTab.CurrentFrameTabID = Index;
                            //                            if (Index >= 1 && Index <= 4) {
                            //                                MainRefreshFrame();
                            //                            }
                        }
                        else {
                            //                            $("#Iframe" + this.id.replace("iFrameTab", "")).hide();
                            //                            $(this).attr("class", "zzTabBg2");
                        }
                    }
               )
    return IsOk;
}

function PreviousScrollTab() {
    var pp = $("#zzFrameTd").width() - (MainTab.TabWidth * MainTab.FrameTabCount + parseInt($("#zzFrameTabs").css("left")))
    //alert(pp);
    if (pp <= 0) {
        $("#zzFrameTabs").animate({ left: "-=130" }, "slow"); ;
    }

}
function NextScrollTab() {
    if (parseInt($("#zzFrameTabs").css("left")) < 0) {
        $("#zzFrameTabs").animate({ left: "+=130" }, "slow"); ;
    }
    else {
        $("#zzFrameTabs").animate({ left: "0px" }, "slow"); ;
    }
}