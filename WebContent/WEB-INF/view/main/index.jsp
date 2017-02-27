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
        <c:forEach var="t" items="${activity }">
	        <div class="newspeed_popup_cover" id="popDiv1_${t.auto }"></div>
	        <div class="newspeed_popup_wrap" id="popDiv2_${t.auto }">
	            <div class="newspeed_close" onclick="$('#popDiv1_${t.auto }').removeClass('newspeed_popup_cover_on'), $('#popDiv2_${t.auto }').slideToggle(300), $('body').css('overflow', 'visible')">
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
        <div class="main">
            <div class="inner">
                <section class="main_video_popup">
                    <video class="main_video" controls id="video">
                        <source src="/img/main/mrr_movie.mp4">
                    </video>
                    <div class="video_close" onclick="document.getElementById('video').pause()">
                        <img src="/img/main/video_close.png">
                    </div>
                </section>
                <div class="main_contents">
                    <section class="main_slider">
                        <div class="main_slider_inner">
                            <div class="main_slide visual01">
                                <div class="slide_img">
                                    <img src="/img/main/visual01_banner.png">
                                </div>
                            </div>
                            <div class="main_slide visual02">
                                <div class="slide_img">
                                    <img src="/img/main/visual02_banner.png">
                                </div>
                            </div>
                            <div class="main_slide visual03">
                                <div class="slide_img">
                                    <img src="/img/main/visual03_banner.png">
                                </div>
                            </div>
                            <div class="main_slide visual04">
                                <div class="slide_img">
                                    <img src="/img/main/visual04_banner.png">
                                </div>
                            </div>
                            <div class="main_slide visual05">
                                <div class="slide_img type0">
                                    <img src="/img/main/visual05_banner.png">
                                </div>
                            </div>
                            <div class="main_slide visual01">
                                <div class="slide_img">
                                    <img src="/img/main/visual01_banner.png">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="main_award">
                        <div class="img">
                            <img src="/img/main/main_award.png">
                        </div>
                    </section>
                    <section class="banner_wrap">
                        <div class="main_banner">
                            <div class="left banner">
                                <img src="/img/main/main_banner1.png">
                            </div>
                            <div class="right banner">
                                <img src="/img/main/main_banner2.png">
                            </div>
                        </div>
                        <div class="sub_banner">
                            <div class="banner">
                                <img src="/img/main/banner01.png">
                            </div>
                            <div class="banner">
                                <img src="/img/main/banner02.png">
                            </div>
                            <a href="/uconsulting/interview">
                                <div class="banner">
                                    <img src="/img/main/banner03.png">
                                </div>
                            </a>
                            <a href="/information/essay">
                                <div class="banner">
                                    <img src="/img/main/banner04.png">
                                </div>
                            </a>
                            <a href="/uconsulting/susi">
                                <div class="banner">
                                    <img src="/img/main/banner05.png">
                                </div>
                            </a>
                            <a href="/uconsulting/jungsi">
                                <div class="banner">
                                    <img src="/img/main/banner06.png">
                                </div>
                            </a>
                        </div>
                        <div class="bottom_img">
                            <img src="/img/main/main_bottom.png">
                        </div>
                    </section>
                </div>
                <aside class="side_contents">
                	<c:choose>
                		<c:when test="${login == null }">
		                    <section class="login_wrap">
		                        <div class="inner">
		                            <div class="logo">
		                                <img src="/img/logo.png">
		                            </div>
		                            <div class="login_box">
		                                <div class="id_box">
		                                	<c:choose>
		                                		<c:when test="${save != null }">
				                                    <input type="text" id="id" placeholder="아이디" value="${save }">
		                                		</c:when>
		                                		<c:otherwise>
				                                    <input type="text" id="id" placeholder="아이디">
		                                		</c:otherwise>
		                                	</c:choose>
		                                    <input type="password" id="pw" placeholder="비밀번호">
		                                </div>
		                                <div class="submit" onclick="login()">
		                                	<input type="button" value="로그인">
		                                </div>
		                                <div class="loginFail" id="loginFail">아이디 / 비밀번호를 확인해주세요.</div>
		                            </div>
		                            <div class="txt_wrap">
<!-- 		                                <div class="txt" onclick="location.href='/search'">아이디/비밀번호찾기</div> -->
		                                <div class="txt" onclick="javascript: alert('준비중입니다.')">아이디/비밀번호찾기</div>
<!-- 		                                <div class="txt" onclick="location.href='/join'">회원가입</div> -->
		                                <div class="txt" onclick="javascript: alert('준비중입니다.')">회원가입</div>
		                            </div>
		                            <div class="id_check_box">
	                                    <input type="checkbox" name="pre" value="auto" id="autoLogin">
	                                    <div class="txt"><label for="autoLogin">자동 로그인</label></div>
	                                    <c:choose>
	                                    	<c:when test="${save != null }">
			                                    <input type="checkbox" name="pre" value="save" id="saveId" checked="checked">
			                                    <div class="txt"><label for="saveId">아이디 저장</label></div>
	                                    	</c:when>
	                                    	<c:otherwise>
			                                    <input type="checkbox" name="pre" value="save" id="saveId">
			                                    <div class="txt"><label for="saveId">아이디 저장</label></div>
	                                    	</c:otherwise>
	                                    </c:choose>
		                            </div>
		                        </div>
		                    </section>
                		</c:when>
                		<c:otherwise>
		                    <section class="login_on_wrap">
		                        <div class="inner">
		                            <div class="greet_wrap">
		                                <div class="logo">
		                                    <img src="/img/logo.png">
		                                </div>
		                                <div class="txt">
		                                    <span>${login.name }</span>님 환영합니다.
		                                </div>
		                            </div>
		                            <div class="login_info_wrap">
		                                <div class="login_info">
		                                    <div class="img">
		                                        <img src="/img/main/mywrite.png">
		                                    </div>
		                                    <div class="txt">
												내 글 <span>5</span>
		                                    </div>
		                                </div>
		                                <div class="login_info m1">
		                                    <div class="img">
		                                        <img src="/img/main/mycheck.png">
		                                    </div>
		                                    <div class="txt">
												내 추천 <span>13</span>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="logout_wrap">
		                                <div class="txt" onclick="location.href='/info'">
	                                        <span>내정보</span>
		                                </div>
		                                <div class="txt" onclick="location.href='/logout'">
		                                    <span>로그아웃</span>
		                                </div>
		                            </div>
		                        </div>
		                    </section>
                		</c:otherwise>
                	</c:choose>
                    <section class="video_wrap">
                        <video class="main_video" autoplay loop muted onclick="document.getElementById('video').play()">
                            <source src="/img/main/mrr_movie.mp4">
                        </video>
                    </section>
                    <section class="scroll_wrap">
                        <a href="/info/activity">
                            <div class="scroll_tit">전체 보러가기+</div>
                        </a>
                        <div class="inner">
                        
	                        <c:choose>
	                        	<c:when test="${activity.size() > 0 }">
		                        	<c:forEach var="t" items="${activity }">
			                            <div class="scroll_content">
			                                <div class="img" style="background-image: url('/activityFile/${t.file1 }')"></div>
			                                <c:choose>
			                                	<c:when test="${t.title.length() > 35 }">
					                                <div class="txt">${t.title.substring(0, 35) }...</div>
			                                	</c:when>
			                                	<c:otherwise>
			                                		<div class="txt">${t.title }</div>
			                                	</c:otherwise>
			                                </c:choose>
			                                <div class="newspeed_more" onclick="detail(${t.auto })">
			                                    <span>+더보기</span>
			                                </div>
			                            </div>
		                        	</c:forEach>
	                        	</c:when>
	                        	<c:otherwise>
	                        		<div class="scroll_content">
	                        			<div class="txt">등록된 글이 없습니다.</div>
	                        		</div>
	                        	</c:otherwise>
	                        </c:choose>
                            
                        </div>
                    </section> 
                </aside>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
    
    <script>
    	// 자동로그인 / 아이디저장 체크
   		$("#autoLogin").change(function(){
   			if($("#autoLogin").prop("checked")){
   				$("#saveId").prop("checked", false);
   			}
   		});
   		$("#saveId").change(function(){
   			if($("#saveId").prop("checked")){
   				$("#autoLogin").prop("checked", false);
   			}
   		});
    	// 비밀번호 입력란에서 엔터
    	$("#pw").keyup(function(event){
    		if(event.keyCode==13){
    			login();
    		}
    	});
    	// 로그인
    	function login(){
    		var id = $("#id").val();
    		var pw = $("#pw").val();
    		var autoLogin = $("#autoLogin").prop("checked");
    		var saveId = $("#saveId").prop("checked");
    		$.ajax({
    			type : "post",
    			url : "/login/"+id+"/"+pw+"/"+autoLogin+"/"+saveId,
    			async : false,
    			success : function(txt){
    				if(txt){
    					location.href="/";
    				} else {
    					$("#loginFail").show();
    				}
    			}
    		});
    	}
    	// 더보기
    	var sn = 0;
	    var slideWidth = 480;
	    var slideLength;
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
    	}
    	// 이미지 이전, 다음
	    function prevNext(arrow, num){
// 	    	slideLength = $("#img1_"+num).length;
//     		slideLength += $("#img2_"+num).length;
//     		slideLength += $("#img3_"+num).length;
//     		slideLength += $("#img4_"+num).length;
//     		slideLength += $("#img5_"+num).length;
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
    </script>
    
</html>