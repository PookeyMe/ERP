function findMenu(treeid)
{
    var treeView=getId(treeid);
    var checkList=getTag("input",treeView);
    if(checkList.length > 0)
    {
        for(var i=0; i<checkList.length; i++)
        {  
            checkList[i].onclick=function(){return selectNode(this.id)};
        }
    }
}

function selectNode(id)
{
    var state = 0;
    var flag=getId(id).checked;
    
    var obj=getId(id.substring(0,id.length - 8) + "Nodes");
    
    //勾选父节点
    
    //得到最外部的div
    var parentobj=getId(id).parentNode.parentNode.parentNode.parentNode.parentNode;
    
    //得到div前一个节点的checkbox
    var chk = getTag("input",parentobj.previousSibling)[0];
    if(chk!=undefined)
    {
        var tables = getTag("table",parentobj);
        for(var i=0;i<tables.length;i++)
        {
            var tempchk = getTag("input",tables[i])
            if(tempchk.length>0)
            {
                if(tempchk[0].checked == true)
                {
                    state = 1;
                    break;
                }
            }
        }
        
        if(flag)
        {
            chk.checked = flag;
        }
        else
        {
            if(state == 0)
            {
                chk.checked = flag;
            }
        }
        
        selectNode(chk.id,1);
    }
    
    
    //勾选子节点
    if(arguments.length == 1)
    {
        if(obj!=null)
        {
            var nds=getTag("input",obj);
            if(nds.length>0)
            {
                for(var i=0;i<nds.length;i++)
                {
                    nds[i].checked=flag;
                    selectNode(nds[i].id);
                }
            }
        }
    }
}

//打开弹出窗口
function openwin(w,h,url)
{
var l=(window.screen.width/2)-w/2;
var t=(window.screen.height/2)-h/2;
window.open(url,'','width='+w+',height='+h+',top='+t+',left='+l+',menubar=no,toobar=no,scrollbars=yes,resizable=yes,status=no,loation=no');
} 