<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
    <head>
        <title>미래로입시컨설팅</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="/css/mrr_style.css" type="text/css">
        <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel='stylesheet' type='text/css'>
        <meta name="naver-site-verification" content="845557ce7747caed7b061d3a096c9396db155afd"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="robots" content="follow">
        <meta name="keywords" content="대치동입시컨설팅 수시면접대비 자기소개서 비교과대비 중등 고등 미래로입시컨설팅">
		<meta name="description" content=" 대치동입시컨설팅 수시면접대비 자기소개서 비교과대비 중등 고등">
        <meta property="og:type" content="website">
		<meta property="og:title" content="미래로입시컨설팅">
		<meta property="og:description" content="대치동입시컨설팅 수시면접대비 자기소개서 비교과대비 중등 고등">
		<meta property="og:image" content="http://www.mysite.com/myimage.jpg">
		<meta property="og:url" content="http://www.mrr.co.kr">
        <style>
            
        </style>
         
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="/js/mrr_common.js"></script>
        <script>
            $(document).ready(function(){
                 
            });
        </script>
    </head>
     
    <body>
    	<!-- 삭제 view -->
        <div class="delete_cover" id="removeDiv"></div>
        <div class="delete_confirm" id="removeDiv1">
            <div class="delete_confirm_header">
                <div class="logo">
                    <img src="/img/logo.png">
                </div>
            </div>
            <div class="delete_confirm_contents">
                <div class="delete_txt">삭제 하시겠습니까?</div>
                <div class="btn_wrap m1">
                    <div class="btn left" onclick="$('#removeDiv1').hide()">
                        <div class="txt">아니오</div>
                    </div>
                    <div class="btn right" onclick="removeYes()">
                        <div class="txt">네</div>
                    </div>
                </div>
            </div>
        </div>
    	<c:forEach var="t" items="${activity }">
	        <div class="newspeed_popup_cover" id="popDiv1_${t.auto }"></div>
	        <div class="newspeed_popup_wrap" id="popDiv2_${t.auto }">
	            <div class="newspeed_close" onclick="$('#popDiv1_${t.auto }').removeClass('newspeed_popup_cover_on'), $('#popDiv2_${t.auto }').slideToggle(300), $('body').css('overflow', 'visible'), $('#removeDiv1').hide()">
	                <img src="/img/newspeed/close.png">
	            </div>
	            <div class="inner">
	                <div class="newspeed_popup_slider">
	                    <div class="newspeed_popup_arrow">
	                        <div class="newspeed_arrow newspeed_arrow_prev" id="imgPrev${t.auto }" onclick="prevNext('prev', ${t.auto })">
	                            <img src="/img/newspeed/arrow_prev.png">
	                        </div>
	                        <div class="newspeed_arrow newspeed_arrow_next" id="imgNext${t.auto }" onclick="prevNext('next', ${t.auto })">
	                            <img src="/img/newspeed/arrow_next.png">
	                        </div>
	                    </div>
	                    <div class="newspeed_popup_slider_inner" id="popInner${t.auto }">
	                    	<c:if test="${t.file1 != null }">
	                    		<div class="newspeed_popup_slide" style="background-image: url('/activityFile/${t.file1 }')" id="img1_${t.auto }"></div>
	                    	</c:if>
	                    	<c:if test="${t.file2 != null }">
	                    		<div class="newspeed_popup_slide" style="background-image: url('/activityFile/${t.file2 }')" id="img2_${t.auto }"></div>
	                    	</c:if>
	                    	<c:if test="${t.file3 != null }">
	                    		<div class="newspeed_popup_slide" style="background-image: url('/activityFile/${t.file3 }')" id="img3_${t.auto }"></div>
	                    	</c:if>
	                    	<c:if test="${t.file4 != null }">
	                    		<div class="newspeed_popup_slide" style="background-image: url('/activityFile/${t.file4 }')" id="img4_${t.auto }"></div>
	                    	</c:if>
	                    	<c:if test="${t.file5 != null }">
	                    		<div class="newspeed_popup_slide" style="background-image: url('/activityFile/${t.file5 }')" id="img5_${t.auto }"></div>
	                    	</c:if>
	                    </div>
	                    <c:if test="${login.admin == '메인관리자' }">
		                    <div class="newspeed_modify_wrap">
		                        <div class="newspeed_modify" onclick="modify()">수정</div>
		                        <div class="newspeed_modify" onclick="$('#removeDiv1').show()">삭제</div>
		                    </div>
	                    </c:if>
	                </div>
	                <div class="newspeed_txt_wrap">
	                    <div class="txt_header">
	                        <div class="logo">
	                            <img src="/img/logo.png">
	                        </div>
	                        <div class="date">${t.day }</div>
	                    </div>
	                    <div class="txt">${t.content }</div>
	                </div>
	            </div>
	        </div>
    	</c:forEach>
        
        <header>
        	<c:import url="/WEB-INF/view/main/header.jsp"/>
        </header>
        <div class="sub01_02">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/mrr/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">미래로 입시컨설팅 활동</div>
                        <div class="txt">Home > 미래로소개 > 미래로 활동</div>
                    </section>
                    <section class="section01">
                    
                    	<c:choose>
                    		<c:when test="${activity.size() > 0 }">
		                    	<c:forEach var="t" items="${activity }">
			                        <div class="newspeed_wrap">
			                            <div class="newspeed_pic" style="background-image: url('/activityFile/${t.file1 }')">
			                            </div>
			                            <div class="newspeed_txt">
			                            	<c:choose>
			                            		<c:when test="${t.title.length()>35 }">
					                                <div class="txt">${t.title.substring(0, 30) }...</div>
			                            		</c:when>
			                            		<c:otherwise>
					                                <div class="txt">${t.title }</div>
			                            		</c:otherwise>
			                            	</c:choose>
			                                <div class="newspeed_more" onclick="detail(${t.auto })">
			                                    <span>+더보기</span>
			                                </div>
			                            </div>
			                        </div>
		                    	</c:forEach>
                    		</c:when>
                    		<c:otherwise>
                    			<div class="noList">등록된 글이 없습니다.</div>
                    		</c:otherwise>
                    	</c:choose>
                        
                    </section>
					<c:if test="${login.admin == '메인관리자' }">
						<div class="write_btn_wrap">
						    <div class="write_btn" onclick="location.href='/info/activity/write'">
						        <div class="txt">글쓰기</div>
						    </div>
						</div>
					</c:if>
                    <div class="page_sel_wrap">
                        <div class="page_arrow_wrap">
                            <div class="parrow parrow_prev" id="prev" onclick="prev(${start })">
                                <img src="/img/sub05/sub05_01/arrow_prev.png">
                            </div>
                            <div class="parrow parrow_next" id="next" onclick="next(${start })">
                                <img src="/img/sub05/sub05_01/arrow_next.png">
                            </div>
                        </div>
                        
                        <div class="page_number_wrap" align="center">
                        	<c:if test="${start != 0 }">
                            	<c:forEach var="i" begin="${start }" end="${end }">
                            		<c:choose>
                            			<c:when test="${i == selectPage }">
			                                <div class="page_number sel" onclick="page(${i})">
			                                    <span>${i }</span>
			                                </div>
                            			</c:when>
                            			<c:otherwise>
                            				<div class="page_number" onclick="page(${i})">
			                                    <span>${i }</span>
			                                </div>
                            			</c:otherwise>
                            		</c:choose>
                            	</c:forEach>
                           	</c:if>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
    
    <script>
    	// 페이지 표시
    	$(document).ready(function(){
    		if(${noticePage > 9}){
    			$("#next").css("display", "block");
    		}
    		if(${selectPage > 9}){
    			$("#prev").css("display", "block");
    		}
    		if(${end >= noticePage}){
    			$("#next").css("display", "none");
    		}
    	});
    	// 글쓰기 저장 완료
    	$(document).ready(function(){
   			if(${b == 'y'}){
   				alert("등록되었습니다.");
   			} else if(${b == 'n'}){
   				alert("등록에 실패하였습니다.\n잠시후 다시 시도해주세요.");
   			}
    	});
    	// 페이지 이동
    	function page(num){
    		location.href="/info/activity/page/"+num;
    	}
    	// 이전
    	function prev(num){
    		location.href="/info/activity/page/"+(num-9);
    	}
    	// 다음
    	function next(num){
    		location.href="/info/activity/page/"+(num+9);
    	}
    	// 더보기
    	var sn = 0;
	    var slideWidth = 480;
	    var slideLength;
	    var viewNum = 0;
	    $(".newspeed_arrow_prev").hide();
    	function detail(num){
    		sn=0;
    		$("#popInner"+num).css("left", "0px");
    		$("#imgPrev"+num).hide();
    		$("#popDiv1_"+num).addClass("newspeed_popup_cover_on");
    		$("#popDiv2_"+num).slideToggle(300);
    		$("#body").css("overflow", "hidden");
    		slideLength = $("#img1_"+num).length;
    		slideLength += $("#img2_"+num).length;
    		slideLength += $("#img3_"+num).length;
    		slideLength += $("#img4_"+num).length;
    		slideLength += $("#img5_"+num).length;
    		if(slideLength==0 || slideLength==1){
    			$("#imgNext"+num).hide();
    		} else {
    			$("#imgNext"+num).show();
    		}
    		viewNum = num;
    	}
    	// 이미지 이전, 다음
	    function prevNext(arrow, num){
		    $("#popInner"+num).width( slideWidth * slideLength );
	    	if(arrow=='prev'){
	    		if (sn == slideLength + 1) { 
	                return;
	            }
	            sn--;
	            if(sn==0){
	                $("#imgPrev"+num).hide();
	                $("#imgNext"+num).show();
	            } else {
	                $("#imgNext"+num).show();
	            }
	            $("#popInner"+num).stop().animate({
	                left: -1 * slideWidth * sn
	            });
	    	} else if(arrow=='next'){
	    		if (sn == slideLength - 1) { 
	                return;
	            }
	            sn++;
	            $("#popInner"+num).stop().animate({
	                left: -1 * slideWidth * sn
	            });
	            $("#imgPrev"+num).show();
	            if(sn==slideLength-1){
	                $("#imgNext"+num).hide();
	            } else {
	                $("#imgPrev"+num).show();
	            }
	    	}
	    }
    	// 글 수정
    	function modify(){
    		location.href="/info/activity/modify/"+viewNum;
    	}
		// 삭제 완료
    	function removeYes(){
    		$.ajax({
    			type : "post",
    			url : "/info/activity/remove/"+viewNum,
    			async : false,
    			success : function(txt){
    				if(txt){
    					alert("삭제되었습니다.");
    					location.href="/info/activity";
    				} else {
    					alert("삭제에 실패하였습니다.\n잠시후 다시 시도해주세요.");
    				}
    			}
    		});
    	}
    </script>
    
</html>