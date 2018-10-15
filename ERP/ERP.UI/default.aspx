<%@ Page Title="" Language="C#" MasterPageFile="~/mainFrame.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ERP.UI._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 中间内容 -->
    <div class="content-wrapper">
        <section class="content">
            <div class="index-detail">
                <div class="detail-head">
                    <div class="pull-left">
                        <a class="pull-left" href="#">
                            <img src="img/touxiang.png" alt="" class="img-responsive">
                        </a>
                    </div>
                    <div class="head-info">
                        <h2>欢迎进入ERP管理后台</h2>
                        <ul class="list-head">
                            <li class="list-head-item">
                                <label>姓名：</label>
                                <span>高鑫源</span>
                            </li>
                            <li class="list-head-item">
                                <label>工号：</label>
                                <span>12580</span>
                            </li>
                            <li class="list-head-item">
                                <label>职位：</label>
                                <span>前端开发</span>
                            </li>
                            <li class="list-head-item">
                                <label>部门：</label>
                                <span>产品研发部</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="index-function">
                    <ul class="list-modular">
                        <li class="list-modular-item col-md-3 col-xs-3">
                            <a href="pages/project/my-project.html" class="pull-left">
                                <img src="img/icon1.png" alt="" class="img-responsive">
                            </a>
                        </li>
                        <li class="list-modular-item col-md-3 col-xs-3">
                            <a href="pages/funds/my-reimburse.html" class="pull-left">
                                <img src="img/icon2.png" alt="" class="img-responsive">
                            </a>
                        </li>
                        <li class="list-modular-item col-md-3 col-xs-3">
                            <a href="pages/time/time1.html" class="pull-left">
                                <img src="img/icon3.png" alt="" class="img-responsive">
                            </a>
                        </li>
                        <li class="list-modular-item col-md-3 col-xs-3">
                            <a href="pages/statistics/statistics.html" class="pull-left">
                                <img src="img/icon4.png" alt="" class="img-responsive">
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    <a href="#" class="pull-right" id="problem-feedback">
                        <img src="img/icon5.png" alt="" class="img-responsive">
                    </a>
                </div>
                <div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading">
                                <div class="bg-aqua">
                                    系统消息
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <table class="table fold table-striped table-responsive">
                        <col width="60%">
                        <col width="40%">
                        <thead>
                            <tr class="info">
                                <th>内容</th>
                                <th>时间</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>您于2018/10/12提交的费用报销审批单
                                       
                                                <a href="#">000014545</a>，高鑫源审核已通过
                                    </td>
                                <td>2018/10/15&nbsp;&nbsp;15:35:22
                                    </td>
                            </tr>
                            <tr>
                                <td>您于2018/10/12提交的费用报销审批单
                                       
                                                <a href="#">000014545</a>，高鑫源审核已通过
                                    </td>
                                <td>2018/10/15&nbsp;&nbsp;15:35:22
                                    </td>
                            </tr>
                            <tr>
                                <td>您于2018/10/12提交的费用报销审批单
                                       
                                                <a href="#">000014545</a>，高鑫源审核已通过
                                    </td>
                                <td>2018/10/15&nbsp;&nbsp;15:35:22
                                    </td>
                            </tr>
                            <tr>
                                <td>您于2018/10/12提交的费用报销审批单
                                       
                                                <a href="#">000014545</a>，高鑫源审核已通过
                                    </td>
                                <td>2018/10/15&nbsp;&nbsp;15:35:22
                                    </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <!-- 底部标注 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b><font><font>版本</font></font></b>
            <font>
                    <font> 1.0.0
                    </font>
                </font>
        </div>
        <strong><font><font>版权所有©2018 </font></font><a href=""><font><font>武汉理工大学虎虎生威小组</font></font></a><font><font>。</font></font></strong>
        <font>
                <font>版权所有。
                </font>
            </font>
    </footer>
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Settings tab content -->
            <div class="tab-pane active">
                <form method="post">
                    <div style="overflow: hidden; margin: 20px 0;">
                        <span class="control-sidebar-heading">信息公告</span>
                        <button class="btn btn-default btn-xs pull-right">已读</button>
                    </div>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            研发部开发xxxx
                                   
                                        <input type="checkbox" class="pull-right" checked="">
                        </label>
                        <p>
                            昨日下午，研发部门完成xxxxx项目
                           
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
    
</asp:Content>
