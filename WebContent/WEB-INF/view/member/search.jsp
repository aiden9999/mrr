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
        <div class="popup_cover" id="popDiv"></div>
        <div class="popup_wrap id_search_popup" id="popId"></div>
        <div class="popup_wrap id_search_popup pw_search_popup" id="popPw">
        	<div class="search_tit">
				<div class="txt">비밀번호 찾기</div>
				<div class="img">
					<img src="/img/logo.png">
				</div>
			</div>
			<div class="search_txt">
				비밀번호 찾기는 본인임을 인증한 후 이용할 수 있습니다.<br> 회원님을 인증할 방법을 선택해 주세요.<br>
				본인인증 절차가 완료되면 아래에 입력하신 휴대폰으로 임시 비밀번호가 전송됩니다.
			</div>
			<div class="search_input_wrap">
				<div class="input_box">
					<div class="input_txt">아이디</div>
					<input type="text" id="searchPwId">
				</div>
				<div class="input_box">
					<div class="input_txt">이름</div>
					<input type="text" id="searchPwName">
				</div>
			</div>
			<div class="search_phone_btn">
				<div class="btn_inner">
					<div class="img">
						<img src="/img/join/join01_01/certify_phone.png">
					</div>
					<div class="txt" onclick="auth()">휴대폰 인증하기</div>
				</div>
			</div>
			<div class="send_btn" onclick="$('#popDiv').hide(), $('#popPw').hide()">
				<div class="txt">닫기</div>
			</div>
        </div>
        <header>
        	<c:import url="/WEB-INF/view/main/header.jsp"/>
        </header>
        <div class="join01 join02">
            <div class="inner">
                <section class="section01">
                    <div class="search_tit">아이디 찾기</div>
                    <div class="line"></div>
                    <div class="join_input_wrap">
                        <input type="text" id="searchIdName" placeholder="이름">
                        <input type="text" id="searchIdPhone" placeholder="휴대폰번호">
                        <div class="send_btn" onclick="searchId()">
                            <div class="txt">확인</div>
                        </div>
                    </div>
                </section>
                <section class="section02">
                    <div class="search_tit">비밀번호 찾기</div>
                    <div class="line"></div>
                    <div class="send_btn" onclick="searchPw()">
                        <div class="txt">휴대폰 인증</div>
                    </div>
                </section>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
    
    <script>
    	// 아이디 찾기
    	function searchId(){
    		var name = $("#searchIdName").val();
    		var phone = $("#searchIdPhone").val();
    		if(name=="" || phone==""){
    			alert("입력하지 않은 항목이 있습니다.");
    		} else {
	    		$.ajax({
	    			type : "post",
	    			url : "/member/searchId/"+name+"/"+phone,
	    			async : false,
	    			success : function(txt){
			    		$("#popDiv").css("display", "block");
	   					$("#popId").html(txt);
			    		$("#popId").css("display", "block");
	    			}
	    		});
    		}
    	}
    	// 비밀번호 찾기
    	function searchPw(){
    		$("#popDiv").css("display", "block");
    		$("#popPw").css("display", "block");
    	}
    	// 휴대폰 인증
    	function auth(){
    		var id = $("#searchPwId").val();
    		var name = $("#searchPwName").val();
    		if(id=="" || name==""){
    			alert("입력하지 않은 항목이 있습니다.");
    		} else {
    			alert("인증");
    		}
   		}
    </script>
    
</html>