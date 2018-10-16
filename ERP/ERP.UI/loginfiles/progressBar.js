//等待框样式
document.write('<style type="text/css">#loader_container {text-align:center; position:absolute; top:40%; width:100%; left:0; z-index:999;} #loader {font-family:Tahoma,Helvetica,sans; font-size:11.5px; color:#000000; background-color:#FFFFFF; padding:10px 0 16px 0; margin:0 auto; display:block; width:170px; border:1px solid #5a667b; text-align:left; z-index:2;} #loader_bg {background-color:#e4e7eb; position:relative; top:8px; left:8px; height:7px; width:153px; font-size:1px} #progress {height:5px; font-size:1px; width:1px; position:relative; top:1px; left:0px; background-color:#70940D} #mask {position:absolute; top:0; left:0; width:expression(body.clientWidth); height:expression(body.clientHeight); filter:ALPHA(opacity=60); z-index:1; visibility:hidden}</style>');
//等待框
document.write('<div id="loader_container" style="visibility:hidden"><div id="loader"><div id="loader_cue" align="center">页面正在加载中, 请稍等...</div><div id="loader_bg"><div id="progress"> </div></div></div></div> <div id="mask"><iframe frameborder=0 height=100% width=100% allowTransparency=true style="position:absolute; z-index:-1; filter=progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0);"></iframe></div>');

var timerID;
var pos=0;
var dir=2;
var len=0;

//移动滚动条
function animate() {
var elem = document.getElementById('progress');
if (elem != null) {
if (pos==0) len += dir;
if (len>32 || pos>79) pos += dir;
if (pos>119) len -= dir;
if (pos>119 && len==0) pos=0;
elem.style.left = pos;
elem.style.width = len;
}
}

//显示等待框
function toWait(str) {
//mask.style.visibility = 'visible';
if (str!=null && str!="") document.getElementById('loader_cue').innerText = str;
var targelem = document.getElementById('loader_container');
targelem.style.display = 'block';
targelem.style.visibility = 'visible';
timerID = window.setInterval(animate, 20);
}

//移除等待框
function remove_loading() {
//停止定时触发
window.clearInterval(timerID);
//mask.style.visibility = 'hidden';
var targelem = document.getElementById('loader_container');
targelem.style.visibility = 'hidden';
targelem.style.display = 'none';
}