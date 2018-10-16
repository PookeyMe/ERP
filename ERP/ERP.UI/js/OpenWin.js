var xmlhttp;

function openwin(url,w,h,top)
{
    var left = (screen.availWidth - w)/2;
    window.showModalDialog(url,"",'dialogWidth:' + w + 'px;dialogLeft:' + left + ';dialogTop:' + top + ';dialogHeight:' + h + 'px;scroll:yes;help:0;status:no;');
}

function winclose(val)
{
    window.returnValue = val;
    window.close();
}

var Ajax = function(url)
{
    var xmlhttp = null;
    var result = null;
    this.url = url;
    
    this.getResult = function()
    {
        return result;
    }
    
    this.createXMLHTTP = function()
    {
        if(window.ActiveXObject)
        {
            xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        }
        else
        {
            xmlhttp = new XMLHttpRequest();
        }
    }
    
    
    this.getData = function()
    {
        if(xmlhttp.readyState == 4)
        {
            if(xmlhttp.status == 200)
            {
                result = xmlhttp.responseText;
            }
            else
            {
                alert("status is error!");
            }
        }
    }
    
    this.send = function()
    {
        this.createXMLHTTP();
        xmlhttp.onreadystatechange = this.getData;
        xmlhttp.open("POST",this.url,false);
        xmlhttp.send();
    }
}

function show(id)
{
    var info = new Ajax("Mation.aspx?aid=" + id);
    info.send();
    var result = info.getResult().split(',');
    var data = [];
    for(var i=0;i<result.length;i++)
    {
        if(i==0)
            data.push(result[i]);
        else
            data.push("<br>" + result[i]);
        
    }
    data = data.join("");
    document.getElementById("hint").innerHTML = data;
    document.getElementById("hint").style.display = "block";
    document.getElementById("hint").style.left = event.clientX + 10;
    document.getElementById("hint").style.top = event.clientY + 10;
}

function moveShow()
{
    document.getElementById("hint").style.left = event.clientX + 10;
    document.getElementById("hint").style.top = event.clientY + 10;
}
function over()
{
    document.getElementById("hint").style.display = "none";
    document.getElementById("hint").innerHTML = "";
}
function detail(id)
{
    document.getElementById("details").src="Information.aspx?aid=" + id;
}
function login()
{
    var h = screen.availHeight;
    var w = screen.availWidth;
    var win=window.open('Admin_Index.aspx','','scrollbar=0,status=1');
    win.moveTo(0,0);
    win.resizeTo(w,h);
    window.opener=null;
    window.close();
    win.focus();
}

