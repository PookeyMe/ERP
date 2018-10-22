using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace ERP.UI.pages.common
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (!IsPostBack)
            {
                //lbname.Text = Server.UrlDecode(Request.Cookies["user"].Values["realname"]);
                //string power = Server.UrlDecode(Request.Cookies["user"].Values["power"]);

                lbname.Text = "51aspx";
                string power = ",94,96,23,24,61,99,92,95,39,43,19,20,21,65,44,27,11,22,25,67,12,87,88,89,49,50,56,58,30,13,55,14,71,72,73,86,47,31,32,41,42,80,83,84,26,40,28,29,81,15,16,17,18,33,82,34,45,46,66,68,35,36,37,38,97,90,91,57,93,200,300,";

                StringBuilder str = new StringBuilder();
                str.Append("<div title='基本信息'> <div style='height: 7px;'></div>");
                if (power.Contains("94") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('TypeManage','大类管理','../Comod/TypeManage.aspx?moduid=18')\">大类管理</a>");

                }
                if (power.Contains("96") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BrandManage','小类管理','../Comod/BrandManage.aspx?moduid=30')\">小类管理</a>");
                }
                if (power.Contains("23") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('StorageManage','存货管理','../Comod/StorageManageClone.aspx?moduid=79')\">存货管理</a>");

                }
                if (power.Contains("24") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('SupplierManage','供应商档案','../Comod/SupplierManage.aspx?moduid=34')\">供应商档案</a>");

                }
                if (power.Contains("61") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('Staff','客户档案','../Wage/Staff.aspx?moduid=113')\">客户档案</a>");

                }
                if (power.Contains("99") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('WareShopManage','车间管理','../Comod/WareShopManage.aspx?moduid=33')\">车间管理</a>");

                }
                if (power.Contains("92") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('WarehouseManage','仓库管理','../Comod/WarehouseManage.aspx?moduid=33')\">仓库管理</a>");

                }
                //if (power.Contains("94") == true)
                //{
                //    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BooksManage','货位管理','../Comod/BooksManage.aspx?moduid=30')\">货位管理</a>");

                //}
                if (power.Contains("95") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BlankManage','结算方式','../Comod/BlankManage.aspx')\">结算方式</a>");

                }
                if (power.Contains("39") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookFKStaffMoney','期初余额','../Comod/BookFKStaffMoney.aspx')\">期初余额</a>");

                }
                str.Append("</div>");

                str.Append("<div title='单据文件'> <div style='height: 7px;'></div>");
                str.Append(" <ul id=\"tree8\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");
                


                str.Append("</div>");

                str.Append("<div title='采购管理'> <div style='height: 7px;'></div>");
                if (power.Contains("43") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookOrdersRequise','请购单','../Comod/BookOrdersRequise.aspx?istype=2')\">请购单</a>");
                }
                if (power.Contains("19") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('storageAddc','采购订单','../Comod/BookOrdersClone.aspx?istype=2')\">采购订单</a>");
                }
                if (power.Contains("20,") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('storageAdd','采购入库单','../Comod/BookOrders.aspx?istype=2')\">采购入库单</a>");
                }
                if (power.Contains("21") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('ReturnedGoodBill','采购退库单','../Comod/BookOrdersReturn.aspx?istype=3')\">采购退库单</a>");

                }
                if (power.Contains("65") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookOrdersInvoice','采购发票','../Comod/BookOrdersInvoice.aspx?istype=2')\">采购发票</a>");
                }
                str.Append(" <ul id=\"tree0\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");
                str.Append(" <ul id=\"tree1\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");
                str.Append(" <ul id=\"tree2\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");
                str.Append(" <ul id=\"tree3\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");


                str.Append("</div>");
                str.Append("<div title='销售管理'> <div style='height: 7px;'></div>");

                if (power.Contains("49") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookSalesClone','销售订单','../Comod/BookSalesClone.aspx?istype=2')\">销售订单</a>");
                }
                if (power.Contains("50,") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('outSaleComxs','销售出库单','../Comod/BookSales.aspx?istype=2')\">销售出库单</a>");
                }
                if (power.Contains("56") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('outSaleComtd','销售退库单','../Comod/BookSales.aspx?istype=3')\">销售退库单</a>");
                }
                if (power.Contains("58") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookSalesInvoice','销售发票','../Comod/BookSalesInvoice.aspx?istype=2')\">销售发票</a>");
                }
                str.Append(" <ul id=\"tree4\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");

                str.Append("</div>");
                str.Append("<div title='库存管理'> <div style='height: 7px;'></div>");
                if (power.Contains("31") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookAdJust','库位调整单','../Comod/BookAdJust.aspx?moduid=80')\">库位调整单</a>");

                }
                if (power.Contains("32") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookStock','库存调整单','../Comod/BookStock.aspx?moduid=80')\">库存调整单</a>");

                }
                str.Append(" <ul id=\"tree6\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");


                str.Append("</div>");
                str.Append("<div title='业务往来'> <div style='height: 7px;'></div>");
                if (power.Contains("26") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookYFK','预付款单','../Comod/BookYFK.aspx')\">预付款单</a>");

                }
                if (power.Contains("15") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookYFKSales','预收款单','../Comod/BookYFKSales.aspx')\">预收款单</a>");

                }
                if (power.Contains("40,") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookFKOrder','付款单','../Comod/BookFKOrder.aspx')\">付款单</a>");

                }
                if (power.Contains("16") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('BookFKOrderSales','收款单','../Comod/BookFKOrderSales.aspx')\">收款单</a>");

                }
                str.Append(" <ul id=\"tree5\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");




                str.Append("</div>");


                str.Append("<div title='生产管理'> <div style='height: 7px;'></div>");
                if (power.Contains("66") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('process','生产加工单','../Comod/BookOrdersProcess.aspx?istype=2')\">生产加工单</a>");
                }

                if (power.Contains("35") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('Receipt','产成品入库单','../Comod/BookOrdersReceipt.aspx?istype=2')\">产成品入库单</a>");
                }
                if (power.Contains("37") == true)
                {
                    string s = Server.HtmlEncode("/");
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('Material','材料出库单','../Comod/BookOrdersMaterial.aspx?istype=2')\">材料出库单</a>");
                }
                str.Append(" <ul id=\"tree7\" style=\"margin-top:3px;\">");
                str.Append(" </ul>");

                str.Append("</div>");
                str.Append("<div title='系统设置'> <div style='height: 7px;'></div>");
                if (power.Contains("90,") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('ParamSet','基本信息管理','../System/ParamSet.aspx?moduid=120')\">基本信息管理</a>");

                }
                if (power.Contains("91") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('user','员工管理','../System/user.aspx?moduid=2')\">员工管理</a>");

                }
                if (power.Contains("57") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('flagorder','审核中心','../Comod/flagorder.aspx')\">审核中心</a>");
                }


                if (power.Contains("93") == true)
                {
                    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('flagmanage','单据审核设置','../Comod/flagmanage.aspx')\">单据审核设置</a>");

                }

                //if (power.Contains("93") == true)
                //{
                //    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('informManage','通知管理','../Comod/informManage.aspx')\">通知管理</a>");

                //}

                //if (power.Contains("97") == true)
                //{
                //    str.Append("<a class=\"l-link\"  href=\"javascript:f_addTab('newsadmin','新闻中心','../Comod/newsadmin.aspx')\">新闻中心</a>");
                //}
                str.Append("</div>");


                accordion1.InnerHtml = str.ToString().Trim();
            }
        }
        protected void linkOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Request.Cookies.Clear();
            Response.Redirect("login.aspx");
        }
    }
    
}