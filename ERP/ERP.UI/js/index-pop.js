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
    /***fankui*/
    $('#problem-feedback').on('click', function(e) {
        stopDefault(e);
        layer.open({
            type: 1,
            title: ['说说ERP管理后台存在的问题', 'font-size:18px;font-weight:bold;'],
            shadeClose: true,
            shade: 0.8,
            scrollbar: false,
            area: ['700px', 'auto'],
            content: '<form method="post">' +
                '<div class="popup-body">' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">问题描述<i style="color:red;">*</i>：</label>' +
                '<div class="col-md-10 col-xs-10"><textarea rows="6" cols="" class="form-control" required placeholder="请详细描述您在操作过程中遇到的问题，或建议"></textarea></div>' +
                '</div>' +
                '<div class="form-group">' +
                '<label for="" class="col-md-2 col-xs-2">联系方式：</label>' +
                '<div class="col-md-10 col-xs-10"><input type="text" class="form-control" required placeholder="请输入您的联系QQ、微信或手机号，不要错过与开发大神一次近距离接触的机会"></div>' +
                '</div>' +
                '<div class="row"><div class="col-md-12" style="text-align:center;"><button class="btn btn-default" style="margin-right:30px;padding:6px 33px;">提交</button></div></div>' +
                '</div>' +
                '</form>'
        });
    });
});