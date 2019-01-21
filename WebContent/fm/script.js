$(document).ready(function(){
    var height = window.innerHeight,
    x= 0, y= height/2,
    curveX = 10,
    curveY = 0,
    targetX = 0,
    xitteration = 0,
    yitteration = 0,
    menuExpanded = false;
    
    blob = $('#blob'),
    blobPath = $('#blob-path'),

    hamburger = $('.hamburger');

    $(this).on('mousemove', function(e){
        x = e.pageX;
        
        y = e.pageY;
    });

    $('.hamburger, .menu-inner').on('mouseenter', function(){
        $(this).parent().addClass('expanded');
        menuExpanded = true;
    });

    $('.menu-inner').on('mouseleave', function(){
        menuExpanded = false;
        $(this).parent().removeClass('expanded');
    });

    function easeOutExpo(currentIteration, startValue, changeInValue, totalIterations) {
        return changeInValue * (-Math.pow(2, -10 * currentIteration / totalIterations) + 1) + startValue;
    }

    var hoverZone = 150;
    var expandAmount = 20;
    
    function svgCurve() {
        if ((curveX > x-1) && (curveX < x+1)) {
            xitteration = 0;
        } else {
            if (menuExpanded) {
                targetX = 0;
            } else {
                xitteration = 0;
                if (x > hoverZone) {
                    targetX = 0;
                } else {
                    targetX = -(((60+expandAmount)/100)*(x-hoverZone));
                }           
            }
            xitteration++;
        }

        if ((curveY > y-1) && (curveY < y+1)) {
            yitteration = 0;
        } else {
            yitteration = 0;
            yitteration++;  
        }

        curveX = easeOutExpo(xitteration, curveX, targetX-curveX, 100);
        curveY = easeOutExpo(yitteration, curveY, y-curveY, 100);

        var anchorDistance = 200;
        var curviness = anchorDistance - 40;

        var newCurve2 = "M60,"+height+"H0V0h60v"+(curveY-anchorDistance)+"c0,"+curviness+","+curveX+","+curviness+","+curveX+","+anchorDistance+"S60,"+(curveY)+",60,"+(curveY+(anchorDistance*2))+"V"+height+"z";

        blobPath.attr('d', newCurve2);

        blob.width(curveX+60);

        hamburger.css('transform', 'translate('+curveX+'px, '+curveY+'px)');
    
	    $('h2').css('transform', 'translateY('+curveY+'px)');
	        window.requestAnimationFrame(svgCurve);
	}
    window.requestAnimationFrame(svgCurve);
//    function autoHypenPhone(str) { // 폰번호 하이픈 하는 함수
//    	str = str.replace(/[^0-9]/g, '');
//    	var tmp = '';
//    	if (str.length < 4) {
//    		return str;
//    	} else if (str.length < 7) {
//    		tmp += str.substr(0, 3);
//    		tmp += '-';
//    		tmp += str.substr(3);
//    		return tmp;
//    	} else if (str.length < 11) {
//    		tmp += str.substr(0, 3);
//    		tmp += '-';
//    		tmp += str.substr(3, 3);
//    		tmp += '-';
//    		tmp += str.substr(6);
//    		return tmp;
//    	} else {
//    		tmp += str.substr(0, 3);
//    		tmp += '-';
//    		tmp += str.substr(3, 4);
//    		tmp += '-';
//    		tmp += str.substr(7);
//    		return tmp;
//    	}
//    	return str;
//    }
//	    var cellPhone = document.getElementById('phone');
//	    
//	    cellPhone.onkeyup = function(event) {
//	   	event = event || window.event;
//    	var val = this.value.trim();
//    	this.value = autoHypenPhone(val);
//   }
});

