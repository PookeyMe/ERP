function hint(time,msg,hid,type,position)
{
    var container = hid;
    var head = hid + "Head";
    var content = hid + "Content";
    var msgid = hid + "Msg";
    var color = "cornflowerblue";
    
    if(arguments.length > 3)
    {
        if(type == 2)
            color = "#FFCC33";
        else if(type == 3)
            color = "#009900";
        else if(type == 4)
            color = "#cc3300";
        else if(type == 5)
            color = "#000000";
        else
            color = "cornflowerblue";
    }

    if(document.getElementById(hid)==null)
    {
        var hintContainer = document.createElement("div");
        hintContainer.id = container;
        hintContainer.style.cssText = "width:202px;height:122px;position:absolute;overflow:hidden;z-index:9999;display:none;bottom:5px;right:5px;";
        
        if(arguments.length==5)
           hintContainer.style.cssText = "width:202px;height:122px;position:absolute;overflow:hidden;z-index:9999;display:none;bottom:5px;left:5px;";
        
        var hintContent = document.createElement("div");
        hintContent.id = content;
        hintContent.style.cssText = "border:solid 1px " + color + ";font-size:12px;position:absolute;background-color:white;top:150px;width:200px;height:100px;";
        
        var hintHead = document.createElement("div");
        hintHead.id = head;
        hintHead.style.cssText = "padding:3px 3px 2px 3px;float:left;background-color:" + color + ";";
        hintHead.innerHTML="<a onclick='closeHint(\"" + container + "\",\"" + content + "\",\"" + msgid + "\")' style='cursor:pointer;float:right;color:white;'>关闭</a>";
        hintContent.appendChild(hintHead);
        
        var hintMsg = document.createElement("div");
        hintMsg.id = msgid;
        hintMsg.style.cssText="width:186px;height:97px;padding:2px 6px;overflow-y:auto;scrollbar-face-color: #ffffff;scrollbar-highlight-color: #ffffff;scrollbar-shadow-color: #919192;scrollbar-darkshadow-color: #ffffff;";
        hintMsg.innerHTML = msg;
        hintContent.appendChild(hintMsg);
        
        hintContainer.appendChild(hintContent);
        document.documentElement.childNodes[1].appendChild(hintContainer);
    }
    
    if(document.getElementById(hid).style.display == "none")
    {
        if(document.getElementById(msgid).innerHTML == "")
            document.getElementById(msgid).innerHTML = msg;
        showHint(time,container,content,msgid,0);
    }
}


function showHint(time,container,hintcontent,msg,type)
{
    if(document.getElementById(container).style.display == "none")
        document.getElementById(container).style.display = "block";
        
    var content = document.getElementById(hintcontent);
    
    if(parseInt(content.style.top) > 0&&!type)
    {
        content.style.top = parseInt(content.style.top) - 5 + "px";
        if(parseInt(content.style.top) == 0)
        {
            type = 1;
            
            setTimeout("showHint(" + time + ",'" + container + "','" + hintcontent + "','" + msg + "'," + type + ")",time*1000);
        }
        else
        {
            setTimeout("showHint(" + time + ",'" + container + "','" + hintcontent + "','" + msg + "'," + type + ")",45);
        }
    }
    else
    {
        if(parseInt(content.style.top) < 180)
        {
            content.style.top = parseInt(content.style.top) + 5 + "px";
        }
        else
        {
            document.getElementById(msg).innerHTML = "";
            document.getElementById(container).style.display = "none";
            return;
        }
        setTimeout("showHint(" + time + ",'" + container + "','" + hintcontent + "','" + msg + "'," + type + ")",45);
    }
}

function closeHint(container,content,msg)
{
    showHint(0,container,content,msg,1);
}