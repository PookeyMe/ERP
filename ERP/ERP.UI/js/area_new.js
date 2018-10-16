function loadProvince(province_id)
{
	
	var obj = document.getElementById(province_id);
	obj.length = 0;
	obj.options.add(new Option("请选择","0"));
	for(var i = 0 ; i<ProvinceArray.length; i++)
	{
		var opt = new Option(ProvinceArray[i].name,ProvinceArray[i].name);
		obj.options.add(opt);
	}
	//alert("adf");
}

function ProvinceChange(province_id, city_id, area_id) {
     var pro = document.getElementById(province_id);
     if(pro.selectedIndex==0)
     {
         if(city_id!="")
			clearOption(city_id);
		 if(area_id!="")
			clearOption(area_id);
     }
     p_loadCity(pro.value,city_id,area_id);
}

function CityChange(city_id,area_id)
{
	var pro = document.getElementById(city_id);
     if(pro.selectedIndex==0)
     {
		 if(area_id!="")
			clearOption(area_id);
     }
     c_loadArea(pro.value,area_id);
}


function p_loadCity(province_name,city_id,area_id)
{
	var obj = document.getElementById(city_id);
	obj.length=0;
	obj.options.add(new Option("请选择","0"));
	for(var i = 0 ; i < CityArray.length; i++)
	{
		if(CityArray[i].pname == province_name)
		{
			var opt = new Option(CityArray[i].name,CityArray[i].name);
			obj.options.add(opt);
		}
	}
	if(area_id!="")
		clearOption(area_id);
}

function c_loadArea(city_name,area_id)
{
	var obj = document.getElementById(area_id);
	obj.length=0;
	obj.options.add(new Option("请选择","0"));
	for(var i = 0 ; i < AreaArray.length; i++)
	{
		if(AreaArray[i].pname == city_name)
		{
			var opt = new Option(AreaArray[i].name,AreaArray[i].name);
			obj.options.add(opt);
		}
	}
}

function clearOption(id)
{
	var pro = document.getElementById(id);
	pro.length=0;
	pro.options.add(new Option("请选择","0"));
}

function Init_Area(province_id,city_id,area_id,province_name,city_name,area_name)
{
	
	var obj = document.getElementById(province_id);
	loadProvince(province_id);
	obj.value = province_name;
	p_loadCity(province_name,city_id,area_id);
	obj = document.getElementById(city_id);
	obj.value = city_name;
	if(area_id!="")
	{
		c_loadArea(city_name,area_id);
		obj = document.getElementById(area_id);
		obj.value = area_name;
	}
}