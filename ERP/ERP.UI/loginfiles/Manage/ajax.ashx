<%@ WebHandler Language="C#" Class="ajax" %>

using System;
using System.Web;

public class ajax : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string power = context.Server.UrlDecode(context.Request.Cookies["user"].Values["power"]);
        string items = "<itemList>";
        items += "<item iFunID='1' cFunUrl='' cFunName='入库管理'/>";
        if (power.Contains("20") == true)
        {
            items += "<item iFunID='11' cFunUrl='../Comod/StorageAdd.aspx?moduid=79&amp;action=add&amp;isexit=1' cFunName='产品入库'/>";
        }
        if (power.Contains("21") == true)
        {
            items += "<item iFunID='12' cFunUrl='../Comod/ReturnedGoodBill.aspx' cFunName='入库退货' />";
        }
        if (power.Contains("22") == true)
        {
            items += "<item iFunID='13' cFunUrl='../Comod/StorageRecords.aspx?moduid=79' cFunName='入库记录' />";
        }
        if (power.Contains("23") == true)
        {
            items += "<item iFunID='14' cFunUrl='../Comod/StorageManage.aspx?moduid=79' cFunName='产品管理' />";
        }
        if (power.Contains("24") == true)
        {
            items += "<item iFunID='15' cFunUrl='../Comod/SupplierManage.aspx?moduid=34' cFunName='供应商管理' />";
        }
        if (power.Contains("25") == true)
        {
            items += "<item iFunID='16' cFunUrl='../Comod/returnstort.aspx?moduid=79' cFunName='退库记录' />";
        }
        items += "<item iFunID='2' cFunUrl='' cFunName='库存管理'/>";
        if (power.Contains("30") == true)
        {
            items += "<item iFunID='21' cFunUrl='../Comod/StockManage.aspx?moduid=81' cFunName='库存查询'/>";
        }
        if (power.Contains("31") == true)
        {
            items += "<item iFunID='22' cFunUrl='../Comod/DevolveManage.aspx?moduid=80' cFunName='库存调拨' />";
        }
        if (power.Contains("32") == true)
        {
            items += "<item iFunID='23' cFunUrl='../Comod/DevolveDetail.aspx?moduid=80' cFunName='调拨记录' />";
        }
        if (power.Contains("33") == true)
        {
            items += "<item iFunID='24' cFunUrl='../Comod/StoreAlarm.aspx?moduid=80' cFunName='库存报警' />";
        }
        items += "<item iFunID='3' cFunUrl='' cFunName='发货管理' />";
        if (power.Contains("40") == true)
        {
            items += "<item iFunID='31' cFunUrl='../Comod/DeliveryUn.aspx?moduid=83' cFunName='未发订单' />";
        }
        if (power.Contains("41") == true)
        {
            items += "<item iFunID='32' cFunUrl='../Comod/DeliveryAlready.aspx?moduid=83' cFunName='已发订单'/>";
        }
        if (power.Contains("42") == true)
        {
            items += "<item iFunID='33' cFunUrl='../Comod/logisticsmanage.aspx?moduid=33' cFunName='物流管理' />";
        }
        items += "<item iFunID='4' cFunUrl='' cFunName='销售管理' />";
        if (power.Contains("50") == true)
        {
            items += "<item iFunID='41' cFunUrl='../Comod/outSaleCom.aspx' cFunName='产品销售' />";
        }
        if (power.Contains("51") == true)
        {
            items += "<item iFunID='42' cFunUrl='../Comod/Delivery.aspx?moduid=83' cFunName='代收货款订单审核' />";
        }
        if (power.Contains("52") == true)
        {
            items += "<item iFunID='43' cFunUrl='../Comod/DeliveryDetail.aspx?moduid=83' cFunName='代收货款订单查询' />";
        }
        if (power.Contains("53") == true)
        {
            items += "<item iFunID='44' cFunUrl='../Comod/DeliveryReturn.aspx?moduid=83' cFunName='订单取消' />";
        }
        if (power.Contains("54") == true)
        {
            items += "<item iFunID='45' cFunUrl='../Comod/DeliveryAll.aspx?moduid=83' cFunName='订单查询' />";
        }
        if (power.Contains("55") == true)
        {
            items += "<item iFunID='46' cFunUrl='../Comod/DeliveryAll.aspx?moduid=83' cFunName='所有订单'/>";
        }
        items += "<item iFunID='5' cFunUrl='' cFunName='会员管理' />";
        if (power.Contains("60") == true)
        {
            items += "<item iFunID='51' cFunUrl='../Wage/StaffAdd.aspx' cFunName='添加会员'/>";
        }
        if (power.Contains("61") == true)
        {
            items += "<item iFunID='52' cFunUrl='../Wage/Staff.aspx?moduid=113' cFunName='会员管理' />";
        }
        if (power.Contains("62") == true)
        {
            items += "<item iFunID='53' cFunUrl='../Wage/WorkTitle.aspx?moduid=114' cFunName='会员组管理'/>";
        }

        items += "<item iFunID='6' cFunUrl='' cFunName='回款与积分管理' />";
        if (power.Contains("70") == true)
        {
            items += "<item iFunID='61' cFunUrl='../Comod/staffPriceManage.aspx?moduid=1' cFunName='客户缴款' />";
        }
        if (power.Contains("71") == true)
        {
            items += "<item iFunID='62' cFunUrl='../Comod/logpriceManage.aspx?moduid=1' cFunName='代收货款' />";
        }
        if (power.Contains("72") == true)
        {
            items += "<item iFunID='63' cFunUrl='../Comod/IntegTransfer.aspx?moduid=1' cFunName='积分调拨' />";
        }
        if (power.Contains("73") == true)
        {
            items += "<item iFunID='64' cFunUrl='../Comod/staffPriceManage.aspx?moduid=2' cFunName='款项查询' />";
        }

        items += "<item iFunID='7' cFunUrl='' cFunName='统计报表' />";
        if (power.Contains("80") == true)
        {
            items += "<item iFunID='71' cFunUrl='../Comod/StockManage.aspx?moduid=81' cFunName='库存统计' />";
        }
        if (power.Contains("81") == true)
        {
            items += "<item iFunID='72' cFunUrl='../Finance/SaleClear.aspx?moduid=90' cFunName='销售统计' />";
        } if (power.Contains("82") == true)
        {
            items += "<item iFunID='73' cFunUrl='../Finance/ProcClaer.aspx?moduid=89' cFunName='进货统计' />";
        }
        items += "<item iFunID='8' cFunUrl='' cFunName='系统管理' />";
        if (power.Contains("90") == true)
        {
            items += "<item iFunID='81' cFunUrl='../System/ParamSet.aspx?moduid=120' cFunName='基本信息管理' />";
        }
        if (power.Contains("91") == true)
        {
            items += "<item iFunID='82' cFunUrl='../System/user.aspx?moduid=2' cFunName='员工管理' />";
        }
        if (power.Contains("92") == true)
        {
            items += "<item iFunID='83' cFunUrl='../Comod/WarehouseManage.aspx?moduid=33' cFunName='仓库管理' />";
        }
        if (power.Contains("93") == true)
        {
            items += "<item iFunID='84' cFunUrl='../Comod/informManage.aspx' cFunName='通知管理' />";
        }
        if (power.Contains("94") == true)
        {
            items += "<item iFunID='85' cFunUrl='../Comod/TypeManage.aspx?moduid=18' cFunName='产品大类管理' />";
        }
        if (power.Contains("95") == true)
        {
            items += "<item iFunID='86' cFunUrl='../Comod/BrandManage.aspx?moduid=30' cFunName='产品小类管理' />";
        }
        if (power.Contains("96") == true)
        {
            items += "<item iFunID='87' cFunUrl='/main/editguest.aspx' cFunName='客户服务管理' />";
        }
        items += " </itemList>";
        context.Response.Write(items);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}