var iMainRootID = 0, iTreeType = 0;
var Tree_ChildrenTree_IsOpen = 0;
//----------------------------------------------------------------------------
//函数名：SelectCircuitBoard
//功  能：选择电路板
//参  数：
//----------------------------------------------------------------------------
function SelectCircuitBoard(iCircuitBoardID, iTreeLevel) {
    GetCurrentIFrame().SelectCircuitBoard(iCircuitBoardID, iTreeLevel);
    return;
}
//----------------------------------------------------------------------------
//函数名：SelectPowerStation
//功  能：选择电站
//参  数：
//----------------------------------------------------------------------------
function SelectPowerStation(iPowerStationID, iTreeLevel) 
{
    
    GetCurrentIFrame().SelectPowerStation(iPowerStationID, iTreeLevel);
    return;
}
//----------------------------------------------------------------------------
//函数名：MainRefreshFrame
//功  能：刷新树
//参  数：
//----------------------------------------------------------------------------
function MainRefreshFrame() {
    GetCurrentIFrame().WebRefreshFrames();
    return;
}
function changeTree(obj, selectBJ, changeBJ,iChildren)
{
	$("#" + $("#treeIndex").attr('trIndex')).css("background-image", "url('" + $("#treeIndex").attr('trBJ') + "')");
		        
	$(obj).css("background-image", "url('" + selectBJ + "')");
	$("#treeIndex").attr('trIndex', $(obj).attr("id"))
	$("#treeIndex").attr('trBJ', changeBJ);

	$('.Children').css('display', 'none');
	if (Tree_ChildrenTree_IsOpen == 0)
    {
        $("#M"+iChildren).css('display', '');
    }
}
function ShowTree()
{
	$("#FormTR").css('display', 'none');
    $("#TreeTR").css('display', '');
    $("#Tree_Img").attr('src', 'Images/Tree/sxml2.png');
    $("#Form_Img").attr('src', 'Images/Tree/tjcx1.png');
}
function LeftDivClose()
{
    $("#LeftTree_TD").css('display', 'none');
}
function LeftDivShow(ShowWhat)
{
    $("#LeftTree_TD").css('display', '');
    if(ShowWhat=="UserInfo")
    {
        $("#TreeDiv").css('display', 'none');
        $("#UserInfoDiv").css('display', '');
    }
    else
    {
       $("#UserInfoDiv").css('display', 'none');
       $("#TreeDiv").css('display', '');
    }
}

function ShowForm()
{
	$("#TreeTR").css('display', 'none');
    $("#FormTR").css('display', '');
    $("#Tree_Img").attr('src', 'Images/Tree/sxml1.png');
    $("#Form_Img").attr('src', 'Images/Tree/tjcx2.png');

}
//显示在线监控树型目录

        function ShowLeftTree(IsShowForm,IsShowTree,IsShowAll)
        {
            //alert(11);
            if (document.getElementById("TreeSelect")) { return; }
            $.ajax
                (
                    {
                        url: "/OnlineMonitoring/tree/LeftTree.aspx",
                        processData: false,
                        cache: false,
                        dataType: "html",
                        error: function ()
                        {
                            alert("连接服务器出错，请检查网络连接！");
                        },
                        success: function (data)
                        {
                            IsShowAll=true;
                            $("#LeftTree_TD").html(data);
                            $("#TreeDiv").css({ height: $(window).height() - 170 });
                            $("#FormDiv").css({ height: $("#LeftTree_TD").height() - 90 });

                            if (IsShowForm == false)
                            {
                                $("#Form_Img").hide();
                                $("#FormDiv").hide();
                                ShowTree();
                            }
                            if (IsShowTree == false)
                            {
                                $("#Tree_Img").hide();
                                $("#TreeDiv").hide();
                                ShowForm();
                            }
                            else
                            {
                                if (IsShowAll == false)
                                {
                                    $("#TreeAll_Div").hide();
                                }
                            }

                        }
                    }
                );
                }

                //设置Left状态

                function SetLeftState(IsClaertContent,obj)
                {
                    if ($("#LeftTree_TD").attr("state") == "open")
                    {
                        closeMainLeft(IsClaertContent);
                        $(obj).css("background-image", "url('Images/Content/_Content_29.png')");
                    }
                    else
                    {
                        showMainLeft();
                        $(obj).css("background-image", "url('Images/Content/Content_29.png')");
                    }
                } 

                //关闭在线监控树型目录

                function closeMainLeft(IsClaertContent)
                {
                    if (IsClaertContent)
                    {
                        $("#LeftTree_TD").attr("state", "close").html("").hide();
                    }
                    else
                    {
                        $("#LeftTree_TD").attr("state", "close").hide();
                    }
                    //$("#LeftTD_Line").hide();
                }

                function showMainLeft()
                {
                    $("#LeftTree_TD").attr("state", "open").show();
                    //$("#LeftTD_Line").show();
                }