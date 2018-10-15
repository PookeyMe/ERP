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
    /***zuzhi */
    $('#org-build').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['创建组织机构', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['600px', 'auto'],
            content: '<form method="post">' +
                '<div class="popup-body">' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">从属于<i style="color:red;">*</i>：</label>' +
                '<div class="col-md-9 col-xs-9"><select class="form-control" required><option>智途集团</option></select></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">名称<i style="color:red;">*</i>：</label>' +
                '<div class="col-md-9 col-xs-9"><input type="text" class="form-control" required></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">描述：</label>' +
                '<div class="col-md-9 col-xs-9"><textarea rows="3" cols="10" class="form-control">请输入描述信息，如部门的职责等</textarea></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label class="col-md-2 col-xs-2" for="">排序号：</label>' +
                '<div class="col-md-9 col-xs-9"><input type="text" class="form-control"></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label class="col-md-2 col-xs-2" for="">状态：</label>' +
                '<div class="col-md-9 col-xs-9">' +
                '<input type="radio" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font style="margin-right:20px"><font>有效</font></font>' +
                '<input type="radio" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>无效</font></font>' +
                '</div>' +
                '</div>' +
                '<div class="row"><div class="col-md-12" style="text-align:center;"><button class="btn btn-default" style="margin-right:30px;">确定</button><button class="btn btn-info">取消</button></div></div>' +
                '</div>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>' +
                '</form>'
        });
    });
    /***gangwei */
    $('#post-build').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['创建岗位角色', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['600px', 'auto'],
            content: '<form method="post">' +
                '<div class="popup-body">' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">名称<i style="color:red;">*</i>：</label>' +
                '<div class="col-md-9 col-xs-9"><input type="text" class="form-control" required></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">描述：</label>' +
                '<div class="col-md-9 col-xs-9"><textarea rows="3" cols="10" class="form-control">请输入描述信息，如部门的职责等</textarea></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label class="col-md-2 col-xs-2" for="">排序号：</label>' +
                '<div class="col-md-9 col-xs-9"><input type="text" class="form-control"></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label class="col-md-2 col-xs-2" for="">状态：</label>' +
                '<div class="col-md-9 col-xs-9">' +
                '<input type="radio" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font style="margin-right:20px"><font>有效</font></font>' +
                '<input type="radio" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>无效</font></font>' +
                '</div>' +
                '</div>' +
                '<div class="row"><div class="col-md-12" style="text-align:center;"><button class="btn btn-default" style="margin-right:30px;">确定</button><button class="btn btn-info">取消</button></div></div>' +
                '</div>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>' +
                '</form>'
        });
    });
    /**fangwen(caozuo)**/
    $('.access-right').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['模块访问权限设置', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['600px', 'auto'],
            content: '<ul class="set-author">' +
                '<li><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>项目管理</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>我的项目</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>我的审批</font></font></li>' +
                '</ul>' +
                '<ul class="set-author">' +
                '<li><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font><font>费用报销</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font><font>创建费用报销单</font></font></li>' +
                '</ul>' +
                '<ul class="set-author">' +
                '<li><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font><font>工时填报</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;" checked><font><font>创建工时填报单</font></font></li>' +
                '</ul>' +
                '<ul class="set-author">' +
                '<li><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>系统管理</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>组织机构</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>岗位角色</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>用户管理</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>权限管理</font></font></li>' +
                '</ul>' +
                '<div style="text-align:center;margin-bottom:20px;"><button class="btn btn-default" style="margin-right:20px;">确定</button><button class="btn btn-info">取消</button></div>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>'
        });
    });
    $('.operation-access').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['模块操作权限设置', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['600px', 'auto'],
            content: '<ul class="set-author">' +
                '<li><i class="fa fa-envelope-o"></i><font><font>项目管理</font></font></li>' +
                '<li style="padding-left:25px;"><i class="fa fa-envelope-o"></i><font><font>我的项目</font></font></li>' +
                '<li style="padding-left:50px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>创建项目</font></font></li>' +
                '<li style="padding-left:50px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>编辑项目</font></font></li>' +
                '<li style="padding-left:25px;"><i class="fa fa-envelope-o"></i><font><font>我的审批</font></font></li>' +
                '<li style="padding-left:50px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>审核</font></font></li>' +
                '<li style="padding-left:50px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>打款</font></font></li>' +
                '</ul>' +
                '<ul class="set-author">' +
                '<li><i class="fa fa-envelope-o"></i><font><font>费用报销</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>创建</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>编辑</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>查看</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>删除</font></font></li>' +
                '<li style="padding-left:25px;"><input type="checkbox" name="state" class="minimal" style="postion:absolute;opacity: 0;"><font><font>打印</font></font></li>' +
                '</ul>' +
                '<div style="text-align:center;margin-bottom:20px;"><button class="btn btn-default" style="margin-right:20px;">确定</button><button class="btn btn-info">取消</button></div>' +
                '<script>' +
                '$("input[type=checkbox].minimal, input[type=radio].minimal").iCheck({checkboxClass:"icheckbox_minimal-blue",radioClass: "iradio_minimal-blue"});' +
                '</script>'
        });
    });
});