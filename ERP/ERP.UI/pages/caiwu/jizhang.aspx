<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jizhang.aspx.cs" Inherits="ERP.UI.pages.caiwu.jizhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .firstCil {
            float: left;
            width: 10%;
            text-align: center;
            border: solid 0.5px black;
            background-color: gray;
        }

        .otherCil {
            float: left;
            width: 10%;
            text-align: center;
            border: solid 0.5px black;
            height:20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;height:1%; text-align:center">
            <h1>记账凭证</h1>
        </div>
        <hr />
        <div style="width:100%;height:20px">
            <div style="float:left;margin-left:20%; width:30%">时间：</div>
            <div style="float:left;width:30%;text-align:right">编号：</div>
        </div>
        <div style="width:100%;height:auto;float:none;">
            <div class="otherCil" style="margin-left:20%;">摘要</div>
            <div class="otherCil">总账科目</div>
            <div class="otherCil"">明细科目账</div>
            <div class="otherCil"">✔</div>
            <div class="otherCil"">借方金额</div>
            <div class="otherCil"">贷方金额</div>
        </div>
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;">计提本期</div>
            <div class="otherCil">生产成本</div>
            <div class="otherCil""></div>
            <div class="otherCil"">150，000.00</div>
            <div class="otherCil""></div>
            <div class="otherCil""></div>
        </div>
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;"></div>
            <div class="otherCil">制造费用</div>
            <div class="otherCil""></div>
            <div class="otherCil""></div>
            <div class="otherCil"">18，500.00</div>
            <div class="otherCil""></div>
        </div>
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;"></div>
            <div class="otherCil">管理费用</div>
            <div class="otherCil""></div>
            <div class="otherCil""></div>
            <div class="otherCil"">80，500.00</div>
            <div class="otherCil""></div>
        </div>
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;"></div>
            <div class="otherCil">销售费用</div>
            <div class="otherCil""></div>
            <div class="otherCil""></div>
            <div class="otherCil"">16，500.00</div>
            <div class="otherCil""></div>
        </div>
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;width:20.1%;">应付职工薪酬</div>
            <div class="otherCil">工资</div>
            <div class="otherCil""></div>
            <div class="otherCil""></div>
            <div class="otherCil"">265，000.00</div>
        </div>
        
        <div style="width:100%;height:20px;">
            <div class="otherCil" style="margin-left:20%;width:40.25%;">合计</div>
            <div class="otherCil">265，000.00</div>
            <div class="otherCil"">265，000.00</div>

        </div>
        <br>
        <div style="width:100%;height:20px;">
            <pre>
                                    会计主管              记账             出纳                                审核              制证
            </pre>
        </div>
    </form>
</body>
</html>
