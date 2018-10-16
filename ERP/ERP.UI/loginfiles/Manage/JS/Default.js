
        var userFunList = null;     //菜单功能信息
        var TwoMenuIndex = null;    //当前二级功能ID
        
//----------------------------------------------------------------------------
//函数组：功能跳转组

//函数名：execFunUrl
//功  能：转到下一个功能

//参  数：urlStr   功能的URL地址 	execFunUrl('',2,'','')
//----------------------------------------------------------------------------
        function execFunUrl(url,iFunID,cFunName,cFunSmallIcon) {
            
			$("#MainnIframe").attr("src",url);
			
            top.showLoading();
            ZZ_FrameTab.AddNew(url,iFunID,cFunName,cFunSmallIcon);
            //writeOperationLog(iFunID);
            //$("#MainnIframe").attr("src",url);
            //top.document.getElementById("MainIframe").src = url;
        }

        function writeOperationLog(iFunID) {
            $.ajax
                (
                    {
                        url: "/Main/OperationLog.aspx",
                        processData: false,
                        cache: false,
                        data: "iFunID=" + iFunID,
                        dataType: "html",
                        error: function() {
                            alert("连接服务器出错，请检查网络连接！");
                        },
                        success: function() {
                        
                        }
                    }
                );
        }
//----------------------------------------------------------------------------
//函数组：菜单组

//函数名：showListMenu
//功  能：显示下拉菜单
//参  数：menuDiv	菜单图片对象
//		  menuImg	菜单翻转图片对象
//		  id		自定义内部菜单功能id	
//----------------------------------------------------------------------------
                function showMenu(Menu,Menu_BJ,Menu_list)
                {
                    $("#"+Menu).attr('src',Menu_BJ);
                    $("#"+Menu_list).attr('close','T').fadeIn(200);
                }
//----------------------------------------------------------------------------
//函数组：菜单组

//函数名：hideListMenu
//功  能：隐藏下拉菜单
//参  数：menuDiv	要反转的图片对象
//		  menuImg	反转后的图片地址
//		  id		自定义内部菜单功能id	
//----------------------------------------------------------------------------
                function hideListMenu(Menu,Menu_BJ,Menu_list)
                {
                    $("#"+Menu).attr('src',Menu_BJ);
                    $("#"+Menu_list).attr('close','F');
                    
                    var dd = "closeListMenu('" + Menu_list+ "')";
                    setTimeout(dd, 20);
                }
                function closeListMenu(Menu_list)
                {
                   if($("#"+Menu_list).attr('close')=="F")
                   {
                     $("#"+Menu_list).fadeOut(200);
                   }
                } 

//刷新IFrame
            function  refreshIFrame(str)
            {
                //alert(str);
                top.document.getElementById('MainnIframe').contentWindow.location=top.document.getElementById('MainnIframe').contentWindow.location.href;
            }
