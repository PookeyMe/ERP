<%@ WebHandler Language="C#" Class="userajax" %>

using System;
using System.Web;

public class userajax : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //string power = context.Server.UrlDecode(context.Request.Cookies["user"].Values["power"]);
        string items = "<itemList>";
        items += "<item iFunID='3' cFunUrl='' cFunName='产品购买'/>";
        items += "<item iFunID='31' cFunUrl='../Staff/StaffBuy.aspx?ComoditiesID=3' cFunName='产品购买' />";
        items += "<item iFunID='4' cFunUrl='' cFunName='赠品申领'/>";
        items += "<item iFunID='41' cFunUrl='../Staff/StaffGiftBuy.aspx?ComoditiesID=3' cFunName='赠品申领' />";
        items += "<item iFunID='5' cFunUrl='' cFunName='服务选购' />";
        items += "<item iFunID='51' cFunUrl='../Comod/DeliveryUn.aspx?moduid=83' cFunName='服务选择' />";
        items += "<item iFunID='52' cFunUrl='../Comod/DeliveryUn.aspx?moduid=83' cFunName='服务查询' />";
        items += "<item iFunID='6' cFunUrl='' cFunName='订单查询' />";
        items += "<item iFunID='61' cFunUrl='../Staff/StaffDevlivey.aspx?moduid=83' cFunName='产品订单' />";
        items += "<item iFunID='62' cFunUrl='../Staff/StaffGiftDevlivery.aspx?moduid=83' cFunName='赠品订单' />";
        items += "<item iFunID='7' cFunUrl='' cFunName='积分管理' />";
        items += "<item iFunID='71' cFunUrl='../Staff/StaffLog.aspx' cFunName='回款积分' />";
        items += "<item iFunID='72' cFunUrl='../Staff/StaffLog.aspx' cFunName='积分记录' />";
        items += "<item iFunID='8' cFunUrl='' cFunName='系统管理' />";
        items += "<item iFunID='81' cFunUrl='../Staff/StaffAdd.aspx' cFunName='资料修改' />";
        items += "<item iFunID='82' cFunUrl='../Staff/StaffPwd.aspx' cFunName='密码修改' />";
        items += " </itemList>";
        context.Response.Write(items);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}