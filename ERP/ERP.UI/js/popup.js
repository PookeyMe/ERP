/**弹出框**/
$(function() {
    function stopDefault(e) {
        //阻止默认浏览器动作(W3C) 
        if (e && e.preventDefault)
            e.preventDefault();
        //IE中阻止函数器默认动作的方式 
        else
            window.event.returnValue = false;
        return false;
    }
    /**创建项目**/
    $('#popup').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['创建项目', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['900px', 'auto'],
            content: '<form class="form-horizontal" id="formValidate" method="post"><div class="popup-body">' +
                '<div class="form-group"><label for="inputText1" class="col-sm-2 control-label"><font><font>项目名称<font style="color: red">*</font></font></font>:</label> <div class="col-sm-10"><input type="text" class="form-control" id="inputText1" placeholder="请输入您的项目名称" required> </div> </div> ' +
                '<div class="form-group"><label for="select1" class="col-sm-2 control-label"><font><font>项目分类<font style="color: red">*</font></font></font>:</label><div class="col-sm-2"><select class="form-control" id="select1" required> <option></option><option>测绘地理信息服务</option><option>地理信息时空云平台</option><option>地理信息+</option></select> </div><label for="select2" class="col-sm-2 control-label"><font><font>创建人<font style="color: red">*</font></font></font>&nbsp;:</label><div class="col-sm-2"><input type="text" list="name_list" class="form-control" placeholder="请输入创建人" required/><datalist id="name_list"><option label="研发" value="李素萍0022" /><option label="财务" value="张莹0011" /><option label="研发" value="张广杰0033" /></datalist></div> <label for="inputText" class="col-sm-2 control-label"><font><font>项目预算<font style="color: red">*</font></font></font>:</label><div class="col-sm-2"><input type="text" class="form-control" id="inputText" placeholder="请输入预估费用" required> </div></div> ' +
                '<div class="form-group"><label for="inputText2" class="col-sm-2 control-label"><font><font>客户名称</font></font>:</label><div class="col-sm-2"><input type="text" class="form-control" id="inputText2" placeholder="请输入客户名称"> </div><label for="inputText3" class="col-sm-2 control-label"><font><font>联系人</font></font>:</label><div class="col-sm-2"><input type="text" class="form-control" id="inputText3" placeholder="请输入联系人"> </div> <label for="inputText4" class="col-sm-2 control-label"><font><font>联系电话</font></font>:</label><div class="col-sm-2"><input type="text" class="form-control" id="inputText4" placeholder="请输入联系电话"> </div></div>' +
                '<div class="form-group"><label for="datepicker1" class="col-sm-2 control-label"><font><font>开始时间<font style="color: red">*</font></font></font>:</label><div class="col-sm-2"><i class="fa fa-calendar fa-lg form-control-feedback"></i><input type="text" class="form-control pull-right" id="datepicker1" placeholder="请选择日期" required> </div><label for="datepicker2" class="col-sm-2 control-label"><font><font>完成时间<font style="color: red">*</font></font></font>:</label><div class="col-sm-2"><i class="fa fa-calendar fa-lg form-control-feedback"></i><input type="text" class="form-control pull-right" id="datepicker2" placeholder="请选择日期" required> </div> <label for="select3" class="col-sm-2 control-label"><font><font>重要级别<font style="color: red">*</font></font></font>:</label><div class="col-sm-2"><select class="form-control" id="select3" required> <option></option></select> </div></div>' +
                '<div class="form-group"><label class="col-sm-2 control-label"><font><font>描述信息</font></font>:</label><div class="col-sm-10"><textarea class="form-control" rows="5" placeholder="请输入描述信息，如项目的背景、目的、实施方案等"></textarea></div></div>' +
                '<div class="form-group"><div class="col-sm-10 col-sm-offset-2"><div class="select-result clearfix"> <ul> </ul> </div></div><label for="select4" class="col-sm-2 control-label"><font><font>工作性质</font></font>:</label><div class="col-sm-10"><select id="select4" class="form-control"><option disabled="disabled" selected="selected">工作内容相关的关键字</option><option value="内勤">内勤</option><option value="外勤">外勤</option><option value="管理">管理</option></select></div></div>' +
                '<div class="form-group"><label for="inputText5" class="col-sm-2 control-label"><font><font>人员分配</font></font>:</label><div class="col-sm-10"><input type="text" class="form-control pull-right" id="inputText5" placeholder="专项各环节负责人"></div></div>' +
                '<div class="form-group"><label for="inputText6" class="col-sm-2 control-label"><font><font>共享文件地址</font></font>:</label><div class="col-sm-10"><input type="text" class="form-control pull-right" id="inputText6"></div></div>' +
                '<div class="form-group"><label for="inputText5" class="col-sm-2 control-label"><font><font>添加附件</font></font>:</label><div class="col-sm-10" id="dv"><div><i class="fa fa-plus-circle fa-2x fa-fw" onclick="fileClick();"></i></div><input type="file"  onchange="fileSelected(this)"; class="form-control pull-right" style="display: none" id="previewfile"></div><div class="col-sm-10 col-sm-offset-2" id="preview" style="text-align:left;"></div></div>' +
                '<div class="form-group"><div class="col-sm-6"><button type="submit" class="btn btn-default pull-right"><font><font>确定</font></font></button></div><div class="col-sm-6"><button type="submit" class="btn btn-info "><font><font>取消</font></font></button></div></div></div></form>' +
                '<script> $("#datepicker1").datepicker({language: "zh-CN",autoclose: true,todayHighlight: true});$("#datepicker2").datepicker({language: "zh-CN",autoclose: true,todayHighlight: true});$("#select4").on("change",function () {var childHtml="<li><a href="+">"+$(this).val()+"</a></li>"; $(".select-result ul").append(childHtml);});$(".select-result ul").delegate("li","click", function(e){e.preventDefault();$(this).fadeOut();});function fileClick(){$("#previewfile").click();}function fileSelected(file){var index = $(file).val().lastIndexOf("\\+");var sFileName = $(file).val().substr((index+1));var sFileHtml="<span style="+"margin-right"+":"+"20px;"+"><a style="+" href="+sFileName+">"+sFileName+"</a><img src=../../img/timg.jpg style="+"cursor"+":"+"pointer;"+" onclick=guan(this);></span>";$("#preview").append(sFileHtml);};function guan(selector){$(selector).parent().hide();}' +
                '</script>'
        });
    });
    /**工时项目关联**/
    $('.tck').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['项目关联', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['900px', 'auto'],
            content: '<form>' +
                '<div class="popup-body">' +
                '<div class="row">' +
                '<div class="col-md-2 col-xs-2" style="text-align:right;"><label>筛选方式：</label></div>' +
                '<div class="col-md-3 col-xs-3"><select name="" id="" class="form-control"><option value="" disabled>-请选择分类-</option><option value="" selected>项目名</option><option value="">项目编号</option></select></div>' +
                '<div class="col-md-5 col-xs-5"><input type="text" class="form-control" placeholder="请输入关键词" value="江苏移动总公司-蓝牙音频SoC芯片"/></div>' +
                '<div class="col-md-2 col-xs-2"><button class="btn btn-info">搜索</button></div>' +
                '</div>' +
                '<div class="row">' +
                '<div class="col-md-2 col-xs-2" style="text-align:right;"><label>筛选结果：</label></div>' +
                '<div class="col-md-12 col-xs-12" style="min-height:200px;">' +
                '<table class="table fold table-striped table-responsive"><thead><tr class="info"><th></th><th>项目标号</th><th>项目名</th><th>项目起始时间</th><th>项目终止时间</th></tr></thead><tbody><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000001</td><td>地理信息云平台</td><td>2017/03/29</td><td>2017/05/29</td></tr><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000011</td><td>商务管理平台-ERP管理后台</td><td>2017/03/29</td><td>2017/05/29</td></tr><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000111</td><td>公司官网改版</td><td>2017/03/29</td><td>2017/05/29</td></tr></tbody></table>' +
                '</div>' +
                '</div>' +
                '<div class="row"><div class="col-md-12" style="text-align:center;"><button type="button" class="btn btn-default"style="margin-right:20px;">确定</button><button type="button" class="btn btn-info">取消</button></div></div>' +
                '</div>' +
                '</form>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>'
        });
    });
    /**新建合同**/
    $('#new1').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['新增合同', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['900px', 'auto'],
            content: '<form class="form-horizontal" id="formValidate" method="post"><div class="popup-body">' +
                '<div class="form-group"><label for="inputText1" class="col-sm-2 control-label"><font><font>合同名称<font style="color: red">*</font></font></font>:</label> <div class="col-sm-10"><input type="text" class="form-control" id="inputText1" placeholder="请输入您的合同名称" required> </div> </div> ' +
                '<div class="form-group"><label for="datepicker1" class="col-sm-2 control-label"><font><font>合约生效时间<font style="color: red">*</font></font></font>:</label><div class="col-sm-4"><i class="fa fa-calendar fa-lg form-control-feedback"></i><input type="text" class="form-control pull-right" id="datepicker1" placeholder="请选择日期" required> </div><label for="datepicker2" class="col-sm-2 control-label"><font><font>合约结束时间<font style="color: red">*</font></font></font>:</label><div class="col-sm-4"><i class="fa fa-calendar fa-lg form-control-feedback"></i><input type="text" class="form-control pull-right" id="datepicker2" placeholder="请选择日期" required> </div> </div>' +
                '<div class="form-group"><label for="select1" class="col-sm-2 control-label"><font><font>项目分类<font style="color: red">*</font></font></font>:</label><div class="col-sm-4"><select class="form-control" id="select1" required> <option></option><option>测绘地理信息服务</option><option>地理信息时空云平台</option><option>地理信息+</option></select> </div><label for="select3" class="col-sm-2 control-label"><font><font>所属项目<font style="color: red">*</font></font></font>:</label><div class="col-sm-4"><select class="form-control" id="select3" required> <option></option></select>  </div></div> ' +
                '<div class="form-group"><label class="col-sm-2 control-label"><font><font>描述信息</font></font>:</label><div class="col-sm-10"><textarea class="form-control" rows="5" placeholder="请输入描述信息，如项目的背景、目的、实施方案等"></textarea></div></div>' +
                '<div class="form-group"><label for="inputText5" class="col-sm-2 control-label"><font><font>添加附件</font></font>:</label><div class="col-sm-10"><div><i class="fa fa-plus-circle fa-2x fa-fw" onclick="fileClick();"></i></div><input type="file"  onchange="fileSelected(this)"; class="form-control pull-right" style="display: none" id="previewfile"></div><div class="col-sm-10 col-sm-offset-2" id="preview" style="text-align:left;"></div></div>' +
                '<div class="form-group"><div class="col-sm-6"><button type="submit" class="btn btn-default pull-right"><font><font>确定</font></font></button></div><div class="col-sm-6"><button type="submit" class="btn btn-info "><font><font>取消</font></font></button></div></div></div></form>' +
                '<script> $("#datepicker1").datepicker({language: "zh-CN",autoclose: true,todayHighlight: true});$("#datepicker2").datepicker({language: "zh-CN",autoclose: true,todayHighlight: true});$("#select4").on("change",function () {var childHtml="<li><a href="+">"+$(this).val()+"</a></li>"; $(".select-result ul").append(childHtml);});$(".select-result ul").delegate("li","click", function(e){e.preventDefault();$(this).fadeOut();});function fileClick(){$("#previewfile").click();}function fileSelected(file){var index = $(file).val().lastIndexOf("\\+");var sFileName = $(file).val().substr((index+1));var sFileHtml="<span style="+"margin-right"+":"+"20px;"+"><a style="+" href="+sFileName+">"+sFileName+"</a><img src=../../img/timg.jpg style="+"cursor"+":"+"pointer;"+" onclick=guan(this);></span>";$("#preview").append(sFileHtml);};function guan(selector){$(selector).parent().hide();}' +
                '</script>'
        });
    });
    /**驳回**/
    $('.rejected').on('click', function(e) {
        stopDefault(e);
        var index = layer.open({
            type: 1,
            title: ['关闭理由', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['600px', 'auto'],
            content: '<form class="" id="formReject" method="post">' +
                '<div class="popup-body">' +
                '<div class="rule">' +
                '<div class="form-group">' +
                '<label>' +
                '<input type="radio" checked name="reason" class="minimal" style="postion:absolute;opacity: 0;"><font><font>报销金额与发票金额不一致</font></font>' +
                '</label>' +
                '</div>' +
                '<div class="form-group">' +
                '<label>' +
                '<input type="radio" name="reason" class="minimal" style="position: absolute;opacity: 0"><font><font>发票抬头不正确</font></font>' +
                '</div>' +
                '<div class="form-group">' +
                '<label>' +
                '<input type="radio" name="reason" class="minimal" style="position:absolute;opacity: 0"><font><font>发票时间已过期</font></font>' +
                '</label>' +
                '</div>' +
                '<div class="form-group">' +
                '<label>' +
                '<input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"><font><font>所属项目已取消</font></font>' +
                '</label>' +
                '</div>' +
                '<div class="form-group">' +
                '<label>' +
                '<input type="radio" name="reason" class="minimal" style="position: absolute;opacity: 0;"><font><font>测试</font></font>' +
                '</label>' +
                '</div>' +
                '</div>' +
                '<div class="other">' +
                '<div class="form-group">' +
                '<label for="inputTextRe">其他：</label>' +
                '<div class="other_box"><input type="text" class="form-control" id="inputTextRe" placeholder="请输入具体原因"></div>' +
                '<a class="set_reason" href="">设为常规理由</a>' +
                '</div>' +
                '</div>' +
                '<div class="row">' +
                '<div class="col-md-12" style="text-align: center">' +
                '<button class="btn btn-default" style="margin-right: 15px;">提交</button>' +
                '<button class="btn btn-info">取消</button>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</form>' +
                '<script>' +
                '$(".set_reason").click(function(e){e.preventDefault();var reason=[];reason.push("<div class=form-group><label><input type=radio name=reason class=minimal style=opacity:0;position:absolute;>");' +
                'reason.push($("#inputTextRe").val());reason.push("</label></div><script> $(`input[type=radio].minimal`).iCheck({radioClass:`iradio_minimal-blue`});<\\/script>");$(".rule").append(reason.join(""));});' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>'
        });
    });
    /**费用关联**/
    $('.link-prj').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['项目关联', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['900px', 'auto'],
            content: '<form>' +
                '<div class="popup-body">' +
                '<div class="row">' +
                '<div class="col-md-2 col-xs-2" style="text-align:right;"><label>筛选方式：</label></div>' +
                '<div class="col-md-3 col-xs-3"><select name="" id="" class="form-control"><option value="" disabled>-请选择分类-</option><option value="" selected>项目名</option><option value="">项目编号</option></select></div>' +
                '<div class="col-md-5 col-xs-5"><input type="text" class="form-control" placeholder="请输入关键词" value="江苏移动总公司-蓝牙音频SoC芯片"/></div>' +
                '<div class="col-md-2 col-xs-2"><button class="btn btn-info">搜索</button></div>' +
                '</div>' +
                '<div class="row">' +
                '<div class="col-md-2 col-xs-2" style="text-align:right;"><label>筛选结果：</label></div>' +
                '<div class="col-md-12" style="min-height:200px;">' +
                '<table class="table fold table-striped"><thead><tr class="info"><th></th><th>项目标号</th><th>项目名</th><th>项目起始时间</th><th>项目终止时间</th></tr></thead><tbody><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000001</td><td>地理信息云平台</td><td>2017/03/29</td><td>2017/05/29</td></tr><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000011</td><td>商务管理平台-ERP管理后台</td><td>2017/03/29</td><td>2017/05/29</td></tr><tr><td><input type="radio" name="reason" class="minimal" style="postion:absolute;opacity: 0;"></td><td>000000111</td><td>公司官网改版</td><td>2017/03/29</td><td>2017/05/29</td></tr></tbody></table>' +
                '</div>' +
                '</div>' +
                '<div class="row"><div class="col-md-12" style="text-align:center;"><button type="button" class="btn btn-default"style="margin-right:20px;">确定</button><button type="button" class="btn btn-info">取消</button></div></div>' +
                '</div>' +
                '</form>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>'
        });
    });
});