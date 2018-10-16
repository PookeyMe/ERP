//star
$(document).ready(function(){
    var stepW = 24;
    var description = new Array("");
    var stars1 = $("#star1 > li");
	var stars2 = $("#star2 > li");
	var stars3 = $("#star3 > li");
    var descriptionTemp;
    $(".current-rating").css("width",0);
    stars1.each(function(i){
        $(stars1[i]).click(function(e){
            var n = i+1;
            $("#showb1").css({"width":stepW*n});
            descriptionTemp = description[i];
            $(this).find('a').blur();
            return stopDefault(e);
            return descriptionTemp;
        });
    });
	stars2.each(function(i){
        $(stars2[i]).click(function(e){
            var n = i+1;
            $("#showb2").css({"width":stepW*n});
            descriptionTemp = description[i];
            $(this).find('a').blur();
            return stopDefault(e);
            return descriptionTemp;
        });
    });
	stars3.each(function(i){
        $(stars3[i]).click(function(e){
            var n = i+1;
            $("#showb3").css({"width":stepW*n});
            descriptionTemp = description[i];
            $(this).find('a').blur();
            return stopDefault(e);
            return descriptionTemp;
        });
    });
    stars1.each(function(i){
        $(stars1[i]).hover(
            function(){
                $("#description1").text(description[i]);
            },
            function(){
                if(descriptionTemp != null)
                    $("#description1").text(""+descriptionTemp);
                else 
                    $("#description1").text(" ");
            }
        );
    });
	stars2.each(function(i){
        $(stars2[i]).hover(
            function(){
                $("#description2").text(description[i]);
            },
            function(){
                if(descriptionTemp != null)
                    $("#description2").text(""+descriptionTemp);
                else 
                    $("#description2").text(" ");
            }
        );
    });
	stars3.each(function(i){
        $(stars3[i]).hover(
            function(){
                $("#description3").text(description[i]);
            },
            function(){
                if(descriptionTemp != null)
                    $("#description3").text(""+descriptionTemp);
                else 
                    $("#description3").text(" ");
            }
        );
    });
});
function stopDefault(e){
    if(e && e.preventDefault)
           e.preventDefault();
    else
           window.event.returnValue = false;
    return false;
};
