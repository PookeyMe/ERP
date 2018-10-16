
var userAgent = navigator.userAgent;
var isOpera = userAgent.indexOf("Opera")>-1;
var isIE = userAgent.indexOf("compatible")>-1&&userAgent.indexOf("MSIE")>-1&&!isOpera;
var isMoz = userAgent.indexOf("Gecko")>-1;


var Ajax = function(url)
{
    var xmlhttp;
    var result;
    var paras = "";
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
                paras = "";
            }
        }
    }
    
    this.addPara = function(name,val)
    {
        if(paras)
        {
            paras += "&";
        }
        paras += name + "=" + encodeURIComponent(val);
    }
    
    this.send = function()
    {
        this.createXMLHTTP();
        xmlhttp.onreadystatechange = this.getData;
        xmlhttp.open("POST",this.url,false);
        xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xmlhttp.send(paras);
    }
}


function getId(id,doc)
{
    if(arguments.length == 1)
    {
    	return document.getElementById(id);
    }
    else
    {
	    return doc.document.getElementById(id);
    }
}


function getName(name)
{
    return document.getElementsByName(name);
}


function getTag(tag,parentTag)
{
    if(arguments.length==1)
    {
        return document.getElementsByTagName(tag);
    }
    else
    {
        return parentTag.getElementsByTagName(tag);
    }
}


function keyEvent(e)
{
    var Event = isIE?event:e;
    var Control = isIE?event.srcElement:e.target;
    
    if(Event.keyCode == 122||Event.keyCode == 116)
    {
        if(isIE) Event.keyCode = 0;
        noEventReturn(Event);
    }
    else if(Event.keyCode == 8)
    {
        if(Control.nodeName != "INPUT" && Control.nodeName != "TEXTAREA")
        {
            if(isIE) Event.keyCode = 0;
            noEventReturn(Event);
        }
    }
}

//单
function selectChange(left,right,hid,list)
{
    for(var i=0;i<getId(left).length;i++)
    {
        if(getId(left).options[i].selected)
        {
            var opt=new Option(getId(left).options[i].text,getId(left).options[i].value);
            getId(right).add(opt);
            getId(left).options[i]=null;
            i--;        
        }
    }
    document.getElementById(hid).value="";
     for(var i=0;i<getId(list).length;i++)
    {   
       
        if(document.getElementById(hid).value.indexOf(getId(list).options[i].value)=="-1")
        {       
         
             document.getElementById(hid).value+=getId(list).options[i].value+",";
        }
        
    }
}
//全
function selectAll(left,right,hid,list)
{
    for(var i=0;i<getId(left).length;i++)
    {
        var opt=new Option(getId(left).options[i].text,getId(left).options[i].value);
        getId(right).add(opt);
    }
    getId(left).length=0;
    document.getElementById(hid).value="";
    for(var i=0;i<getId(list).length;i++)
    {   
       
        if(document.getElementById(hid).value.indexOf(getId(list).options[i].value)=="-1")
        {       
         
             document.getElementById(hid).value+=getId(list).options[i].value+",";
        }
        
    }
}


function showmsg(msg,name,time)
{   
    getId(name).innerHTML=msg;
    getId(name).style.display="block";
    setTimeout("hiddenmsg('" + name + "')",time*1000);
}


function hiddenmsg(name)
{
    getId(name).style.display = "none";
    getId(name).innerHTML="";
}

