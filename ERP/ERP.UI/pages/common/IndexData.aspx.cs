using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace ERP.UI.pages.common
{
    public partial class IndexData : System.Web.UI.Page
    {
        #region JSON返回类型
        /// <summary>
        /// JSON返回类型
        /// </summary>
        private class Act
        {
            /// <summary>
            /// 状态代码
            /// </summary>
            public bool Status { get; set; }

            /// <summary>
            /// 错误代码
            /// </summary>
            public int ErrorNo { get; set; }
            /// <summary>
            /// 最大天数
            /// </summary>
            public int DayMax { get; set; }
            /// <summary>
            /// 状态消息
            /// </summary>
            public string Message { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject0 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject1 { get; set; }

            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject2 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject3 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject4 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject5 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject6 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject7 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject8 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject9 { get; set; }
            /// <summary>
            /// 自定义数据
            /// </summary>
            public object MyObject10 { get; set; }
        }
        #endregion
        public class chlid
        {
            public string url { get; set; }
            public string text { get; set; }
        }
        public class treelist
        {
            public string text { get; set; }
            public bool isexpand { get; set; }
            public List<chlid> children { get; set; }



        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string power = Server.UrlDecode(Request.Cookies["user"].Values["power"]);
            Act act = new Act();
            if (1 == 1)
            {
                List<treelist> dicmod = new List<treelist>();

                treelist treelist = new treelist();
                treelist.text = "请购单管理";
                treelist.isexpand = true;
                List<chlid> clist = new List<chlid>();
                if (power.Contains("44") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRequiseClone.aspx?moduid=2";
                    c.text = "请购单查询";
                    clist.Add(c);
                }

                treelist.children = clist;
                dicmod.Add(treelist);
                act.MyObject0 = dicmod;
            }
            if (1 == 1)
            {
                List<treelist> dicmod = new List<treelist>();

                treelist treelist = new treelist();
                treelist.text = "采购订单管理";
                treelist.isexpand = true;
                List<chlid> clist = new List<chlid>();
                if (power.Contains("27") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRecordsClone.aspx?moduid=2";
                    c.text = "采购订单查询";
                    clist.Add(c);
                }
                if (power.Contains("11") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRecordsStatusClone.aspx?moduid=2";
                    c.text = "采购订单执行表";
                    clist.Add(c);
                }
                treelist.children = clist;
                dicmod.Add(treelist);
                act.MyObject1 = dicmod;
            }
            if (2 == 2)
            {
                List<treelist> dicmod = new List<treelist>();
                treelist treelist = new treelist();
                treelist.text = "采购单据明细表";
                treelist.isexpand = true;
                List<chlid> clist = new List<chlid>();
                if (power.Contains("22") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRecords.aspx?moduid=79";
                    c.text = "采购入库查询";
                    clist.Add(c);
                }
                if (power.Contains("25") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/returnstort.aspx?moduid=79";
                    c.text = "采购退库查询";
                    clist.Add(c);
                }
                if (power.Contains("67") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRecordsInvoice.aspx?moduid=2";
                    c.text = "采购发票查询";
                    clist.Add(c);
                }
                if (power.Contains("12") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Comod/StorageRecordsRKClone.aspx?moduid=2";
                    c.text = "采购入库单执行表";
                    clist.Add(c);
                }
                if (power.Contains("88") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Finance/cgfpmxbClear.aspx?moduid=89";
                    c.text = "采购发票明细表";
                    clist.Add(c);
                }
                treelist.children = clist;
                dicmod.Add(treelist);
                act.MyObject2 = dicmod;
            }
            if (3 == 3)
            {
                List<treelist> dicmod = new List<treelist>();
                treelist treelist = new treelist();
                treelist.text = "采购单据统计表";
                treelist.isexpand = true;
                List<chlid> clist = new List<chlid>();
                if (power.Contains("87") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Finance/caigouClear.aspx?moduid=89";
                    c.text = "采购入库单统计表";
                    clist.Add(c);
                }
                if (power.Contains("89") == true)
                {
                    chlid c = new chlid();
                    c.url = "../Finance/cgfptjbClear.aspx?moduid=89";
                    c.text = "采购发票统计表";
                    clist.Add(c);
                }

                treelist.children = clist;
                dicmod.Add(treelist);
                act.MyObject3 = dicmod;
            }

            if (4 == 4)
            {
                List<treelist> dicmod = new List<treelist>();
                for (int i = 0; i < 4; i++)
                {
                    treelist treelist = new treelist();
                    if (i == 0)
                    {
                        treelist.text = "销售订单管理";
                    }
                    else if (i == 1)
                    {
                        treelist.text = "销售单据明细表";
                    }
                    else if (i == 2)
                    {
                        treelist.text = "销售单据统计表";
                    }
                    else if (i == 3)
                    {
                        treelist.text = "销售毛利统计";
                    }
                    treelist.isexpand = true;
                    List<chlid> clist = new List<chlid>();
                    if (i == 0)
                    {
                        if (power.Contains("30,") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/SalesRecordsClone.aspx?moduid=2";
                            c.text = "销售订单查询";
                            clist.Add(c);
                        }
                        if (power.Contains("13") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/SalesRecordsStatusClone.aspx?moduid=2";
                            c.text = "销售订单执行表";
                            clist.Add(c);
                        }
                    }
                    else if (i == 1)
                    {
                        if (power.Contains("55") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/DeliveryAll.aspx?moduid=83";
                            c.text = "销售出库退库查询";
                            clist.Add(c);
                        }
                        if (power.Contains("14") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/SalesRecordsRKClone.aspx?moduid=2";
                            c.text = "销售出库单执行情况表";
                            clist.Add(c);
                        }
                        if (power.Contains("71") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/SalesRecordsInvoice.aspx?moduid=83";
                            c.text = "销售发票查询";
                            clist.Add(c);
                        }
                        if (power.Contains("72") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/xsfpmxbClear.aspx?moduid=83";
                            c.text = "销售发票明细表";
                            clist.Add(c);
                        }
                    }
                    else if (i == 2)
                    {
                        if (power.Contains("73") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/salecomClear.aspx?moduid=89";
                            c.text = "销售出库单统计表";
                            clist.Add(c);
                        }
                        if (power.Contains("86") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/xsfptjbClear.aspx?moduid=83";
                            c.text = "销售发票统计表";
                            clist.Add(c);
                        }
                    }
                    else if (i == 3)
                    {
                        if (power.Contains("47") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/salecommlClear.aspx?moduid=89";
                            c.text = "销售毛利统计";
                            clist.Add(c);
                        }

                    }
                    treelist.children = clist;
                    dicmod.Add(treelist);
                }
                act.MyObject4 = dicmod;
            }
            if (5 == 5)
            {
                List<treelist> dicmod = new List<treelist>();
                for (int i = 0; i < 3; i++)
                {
                    treelist treelist = new treelist();
                    if (i == 0)
                    {
                        treelist.text = "单据明细表";
                    }
                    else if (i == 2)
                    {
                        treelist.text = "单据统计表";
                    }
                    else if (i == 1)
                    {
                        treelist.text = "超期报警";
                    }
                    treelist.isexpand = true;
                    List<chlid> clist = new List<chlid>();
                    if (i == 0)
                    {
                        if (power.Contains("28") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookYFKManage.aspx";
                            c.text = "预付款查询";
                            clist.Add(c);
                        }
                        if (power.Contains("17") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookYFKManageSales.aspx";
                            c.text = "预收款查询";
                            clist.Add(c);
                        }
                        if (power.Contains("29") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKOrderManage.aspx";
                            c.text = "付款单查询";
                            clist.Add(c);
                        }
                        if (power.Contains("18") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKOrderManageSales.aspx";
                            c.text = "收款单查询";
                            clist.Add(c);
                        }
                    }
                    else if (i == 2)
                    {
                        if (power.Contains("81") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKClear.aspx";
                            c.text = "付款统计";
                            clist.Add(c);
                        }
                        if (power.Contains("33") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKClearSales.aspx";
                            c.text = "收款统计";
                            clist.Add(c);
                        }
                        if (power.Contains("82") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKStaffClear.aspx";
                            c.text = "供应商应收应付统计";
                            clist.Add(c);
                        }
                        if (power.Contains("34") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKStaffClearSales.aspx";
                            c.text = "客户应收应付统计";
                            clist.Add(c);
                        }
                    }
                    else if (i == 1)
                    {
                        if (power.Contains("46") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKWarnClear.aspx";
                            c.text = "超期应付款报警";
                            clist.Add(c);
                        }
                        if (power.Contains("45") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookFKWarnClearSales.aspx";
                            c.text = "超期应收款报警";
                            clist.Add(c);
                        }


                    }
                    treelist.children = clist;
                    dicmod.Add(treelist);
                }

                act.MyObject5 = dicmod;
            }
            if (6 == 6)
            {
                List<treelist> dicmod = new List<treelist>();
                for (int i = 0; i < 2; i++)
                {
                    treelist treelist = new treelist();
                    if (i == 0)
                    {
                        treelist.text = "单据明细表";
                    }
                    else if (i == 1)
                    {
                        treelist.text = "单据统计表";
                    }
                    treelist.isexpand = true;
                    List<chlid> clist = new List<chlid>();
                    if (i == 0)
                    {
                        if (power.Contains("41") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookAdJustManage.aspx?moduid=80";
                            c.text = "库位调整查询";
                            clist.Add(c);
                        }
                        if (power.Contains("42") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookStockManage.aspx?moduid=80";
                            c.text = "库存调整查询";
                            clist.Add(c);
                        }

                    }
                    else if (i == 1)
                    {
                        if (power.Contains("80,") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/StockManage.aspx?moduid=81";
                            c.text = "库存统计";
                            clist.Add(c);
                        }
                        if (power.Contains("83") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/BookMonthClear.aspx";
                            c.text = "月结存";
                            clist.Add(c);
                        }
                        if (power.Contains("84") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/salejxcClear.aspx?moduid=89";
                            c.text = "进销存变动表";
                            clist.Add(c);
                        }

                    }
                    treelist.children = clist;
                    dicmod.Add(treelist);
                }

                act.MyObject6 = dicmod;
            }
            if (7 == 7)
            {
                List<treelist> dicmod = new List<treelist>();
                for (int i = 0; i < 2; i++)
                {
                    treelist treelist = new treelist();
                    if (i == 0)
                    {
                        treelist.text = "单据明细表";
                    }
                    else if (i == 1)
                    {
                        treelist.text = "单据统计表";
                    }

                    treelist.isexpand = true;
                    List<chlid> clist = new List<chlid>();
                    if (i == 0)
                    {
                        if (power.Contains("68") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/StorageRecordsProcess.aspx?moduid=83";
                            c.text = "生产加工单查询";
                            clist.Add(c);
                        }
                        if (power.Contains("36") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/StorageRecordsReceipt.aspx?moduid=83";
                            c.text = "产成品入库单查询";
                            clist.Add(c);
                        }
                        if (power.Contains("38") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Comod/StorageRecordsMaterial.aspx?moduid=83";
                            c.text = "材料出库单查询";
                            clist.Add(c);
                        }
                    }
                    else if (i == 1)
                    {
                        if (power.Contains("97") == true)
                        {
                            chlid c = new chlid();
                            c.url = "../Finance/materialcomClear.aspx?moduid=83";
                            c.text = "材料出库统计";
                            clist.Add(c);
                        }
                    }
                    treelist.children = clist;
                    dicmod.Add(treelist);
                }
                act.MyObject7 = dicmod;
            }

            Response.Write(JsonConvert.SerializeObject(act));
        }
    }
}