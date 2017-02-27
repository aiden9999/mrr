$(document).ready(function(){
                 
    var sn = 0;

    setTimeout(slider_ani, 3000);

    function slider_ani(){

        sn++;

        $(".main_slider_inner").stop().animate({
            left: -692 * sn
        }, 1000, function(){
            if(sn == 5) {
                sn = 0;
                $(".main_slider_inner").css("left", 0);
            }
            setTimeout(slider_ani, 3000);
        });
    }

});

//$(document).ready(function(){
//                 
//    var fileTarget = $('.board_add_wrap .board_add_hidden');
//    
//    fileTarget.on('change', function(){
//        if(window.FileReader){
//            var filename = $(this)[0].files[0].name;
//        }
//        
//        else { 
//            var filename = $(this).val().split('/').pop().split('\\').pop();
//        }
//        $(this).siblings('.add_upload_name').val(filename);
//        
//    });
//});

$(document).ready(function(){
                 
    $(window).scroll(function(){

        var scrolled = $(window).scrollTop();

        if(scrolled > 144){
            $(".side_menu ul").css("position","fixed");
            $(".side_menu ul").css("top",0);
        } else {
            $(".side_menu ul").css("position","absolute");
            $(".side_menu ul").css("top",0);
        }
    });
});  

$(document).ready(function(){
 
    $(".video_wrap").click(function(){
         
        $(".main_video_popup").slideToggle( 300 );
         
    });
    
    $(".video_close").click(function(){
        
        $(".main_video_popup").slideToggle( 300 );
        
    });
});

//$(document).ready(function(){              
//
//    $(".newspeed_more").click(function(){
//        $(".newspeed_popup_wrap").slideToggle( 300 );
//        $(".newspeed_popup_cover").addClass("newspeed_popup_cover_on");
//        $("body").css("overflow","hidden");
//    });
//    $(".newspeed_close").click(function(){
//        $(".newspeed_popup_wrap").slideToggle( 300 );
//        $(".newspeed_popup_cover").removeClass("newspeed_popup_cover_on");
//        $("body").css("overflow","visible");
//    });
//
//});

//$(document).ready(function(){              
//    
//    var sn = 0;
//    var slideWidth = 480;
//    var slideLength = $(".newspeed_popup_slider .newspeed_popup_slide").length ;
//    $(".newspeed_arrow_prev").hide();
//    
//    $(".newspeed_popup_slider .newspeed_popup_slider_inner").width( slideWidth * slideLength );
//    
//    $(".newspeed_arrow_next").click(function(){
//        
//        if (sn == slideLength - 1) { 
//            return;
//        }
//        
//        sn++;
//        
//        $(".newspeed_popup_slider_inner").stop().animate({
//            
//            left: -1 * slideWidth * sn
//        });
//        $(".newspeed_arrow_prev").show();
//        
//        var divLength = document.getElementsByClassName("newspeed_popup_slide").length;
//        if(sn==divLength-1){
//            $(".newspeed_arrow_next").hide();
//        } else {
//            $(".newspeed_arrow_prev").show();
//        }
//    });
//    
//    $(".newspeed_arrow_prev").click(function(){
//        
//        if (sn == slideLength + 1) { 
//            return;
//        }
//        
//        sn--;
//        
//        if(sn==0){
//            $(".newspeed_arrow_prev").hide();
//        } else {
//            $(".newspeed_arrow_next").show();
//        }
//        
//        $(".newspeed_popup_slider_inner").stop().animate({
//            
//            left: -1 * slideWidth * sn
//        });
//    });
//    
//});