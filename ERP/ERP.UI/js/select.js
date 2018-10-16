
function switchCheck(obj, chkName, parentName) {
    var cuForm, objCheck;
    cuForm = document.forms[0];
    for (var i = 0; i < cuForm.length; i++) {
        if (cuForm.elements[i].type == "checkbox") {
            objCheck = cuForm.elements[i];
            if (objCheck.name.indexOf(chkName) > -1 && objCheck.name.indexOf(parentName) > -1 && objCheck.disabled != true) {
                objCheck.checked = obj.checked;
            }
        }
    }
}

function checkAll(obj, parentName, isAll) {
    if (obj != null && obj != "undefined" && obj != "") {
        $("#" + parentName + " :checkbox").attr("checked", $(obj).attr("checked"));
    }
    else {
        $("#" + parentName + " :checkbox").attr("checked", isAll);
    }
}