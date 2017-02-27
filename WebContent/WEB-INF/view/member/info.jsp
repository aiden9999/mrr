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
        <header>
        	<c:import url="/WEB-INF/view/main/header.jsp"/>
        </header>
        <div class="mypage01 join01_02">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/member/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">마이 페이지</div>
                        <div class="txt">Home > 마이페이지 > 정보수정</div>
                    </section>
                    <section class="section01">
                        <div class="inner">
                            <div class="info_write_wrap">
                                <div class="info_write_tit">
                                    <div class="tit">내정보</div>
                                    <div class="line"></div>
                                </div>
                                <div class="info_write_contents">
                                    <div class="write_change" onclick="infoModify()">
                                        <span>회원 정보변경</span>
                                    </div>
                                    <div class="info_content m0">
                                        <div class="tit">이름</div>
                                        <div class="txt">${login.name }</div>
                                    </div>
                                    <div class="info_content m0">
                                        <div class="tit">아이디</div>
                                        <div class="txt">${login.id }</div>
                                    </div>
                                    <div class="info_content m0">
                                        <div class="tit">필명</div>
                                        <div class="content_box" id="nickTxt">${login.nick }</div>
                                        <input type="text" id="nick" maxlength="8" value="${login.nick }">
                                        <div class="overlap_btn" id="nickBtn" onclick="nickCheck()">중복확인</div>
                                        <div class="txt1" id="nickTxt1">2자~8자 영문, 숫자 조합가능 (공백은 입력불가)</div>
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">현재 비밀번호</div>
                                        <div class="content_box" id="nowPwTxt">********</div>
                                        <input type="password" id="nowPw" maxlength="16">
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">비밀번호</div>
                                        <div class="content_box" id="pwTxt">********</div>
                                        <input type="password" id="pw" maxlength="16" placeholder="비밀번호 변경시 입력">
                                        <div class="txt1" id="pwTxt1">6~16자 영문, 숫자조합 (대소문자구분, 공백은 입력불가 )</div>
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">비밀번호 확인</div>
                                        <div class="content_box" id="pw1Txt">********</div>
                                        <input type="password" id="pw1" maxlength="16" placeholder="비밀번호 변경시 입력">
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">거주지역</div>
                                        <div class="content_box" id="addr1Txt">${login.addr1 }</div>
                                        <select id="addr1">
                                        	<option value="choose">선택</option>
	                                        <c:forEach var="i" items="${addr }">
												<c:choose>
													<c:when test="${i == login.addr1 }">
														<option value="${i }" selected="selected">${i }</option>
													</c:when>
													<c:otherwise>
														<option value="${i }">${i }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">주소</div>
                                        <div class="content_box" id="addr2Txt">${login.addr2 }</div>
                                        <input type="text" id="addr2" placeholder="대치동" value="${login.addr2 }">
                                    </div>
                                    <div class="info_content m1">
                                        <div class="tit">휴대폰</div>
                                        <div class="content_box" id="phone1Txt">${login.phone.substring(0, login.phone.indexOf('-')) }</div>
                                        <select id="phone1">
                                            <option value="choose">선택</option>
                                            <c:forEach var="i" items="${phone }">
												<c:choose>
													<c:when test="${i == login.phone.substring(0, login.phone.indexOf('-')) }">
														<option value="${i }" selected="selected">${i }</option>
													</c:when>
													<c:otherwise>
														<option value="${i }">${i }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
                                        </select>
                                        <div class="txt2">ㅡ</div>
                                        <div class="content_box" id="phone2Txt">${login.phone.substring(login.phone.indexOf('-')+1, login.phone.lastIndexOf('-')) }</div>
                                        <input type="text" id="phone2" maxlength="4" value="${login.phone.substring(login.phone.indexOf('-')+1, login.phone.lastIndexOf('-')) }">
                                        <div class="txt2">ㅡ</div>
                                        <div class="content_box" id="phone3Txt">${login.phone.substring(login.phone.lastIndexOf('-')+1) }</div>
                                        <input type="text" id="phone3" maxlength="4" value="${login.phone.substring(login.phone.lastIndexOf('-')+1) }">
                                    </div>
                                    <div class="info_content m2">
                                        <div class="tit">E-mail</div>
                                        <div class="content_box b1" id="email1Txt">${login.email.substring(0, login.email.indexOf('@')) }</div>
                                        <input type="text" id="email1" value="${login.email.substring(0, login.email.indexOf('@')) }">
                                        <div class="txt3 t3">@</div>
                                        <div class="content_box b3" id="email2Txt">${login.email.substring(login.email.indexOf('@')+1) }</div>
                                        <select id="emailSelect">
                                            <option value="choose">직접입력</option>
	                                        <option value="naver.com">네이버</option>
	                                        <option value="google.com">구글</option>
	                                        <option value="daum.net">다음</option>
	                                        <option value="nate.com">네이트</option>
	                                        <option value="hotmail.com">핫메일</option>
                                        </select>
                                        <input type="text" id="email2" value="${login.email.substring(login.email.indexOf('@')+1) }">
                                    </div>
                                    <div class="info_content">
                                        <div class="tit">정보수신여부</div>
                                        <div class="info_radio_wrap">
                                            <div class="radio_txt">미래로 입시컨설팅 주최 설명회 소식 혹은 학원 설명회 광고를 문자나 이메일로 받으시겠습니까?</div>
                                            <div class="radio_wrap">
	                                            <div class="radio_tit">문자 수신동의</div>
	                                            <c:choose>
	                                            	<c:when test="${login.agreeSms == 'y' }">
			                                            <input type="radio" value="yes" name="agreeSms" id="agreeSmsY" disabled="disabled" checked="checked">
			                                            <div class="txt"><label for="agreeSmsY">예</label></div>
			                                            <input type="radio" value="no" name="agreeSms" id="agreeSmsN" disabled="disabled">
			                                            <div class="txt"><label for="agreeSmsN">아니오</label></div>
	                                            	</c:when>
	                                            	<c:otherwise>
			                                            <input type="radio" value="yes" name="agreeSms" id="agreeSmsY" disabled="disabled">
			                                            <div class="txt"><label for="agreeSmsY">예</label></div>
			                                            <input type="radio" value="no" name="agreeSms" id="agreeSmsN" disabled="disabled" checked="checked">
			                                            <div class="txt"><label for="agreeSmsN">아니오</label></div>
	                                            	</c:otherwise>
	                                            </c:choose>
	                                        </div>
	                                        <div class="radio_wrap">
	                                            <div class="radio_tit">이메일 수신동의</div>
	                                            <c:choose>
	                                            	<c:when test="${login.agreeEmail == 'y' }">
			                                            <input type="radio" value="yes" name="agreeEmail" id="agreeEmailY" disabled="disabled" checked="checked">
			                                            <div class="txt"><label for="agreeEmailY">예</label></div>
			                                            <input type="radio" value="no" name="agreeEmail" id="agreeEmailN" disabled="disabled">
			                                            <div class="txt"><label for="agreeEmailN">아니오</label></div>
	                                            	</c:when>
	                                            	<c:otherwise>
			                                            <input type="radio" value="yes" name="agreeEmail" id="agreeEmailY" disabled="disabled">
			                                            <div class="txt"><label for="agreeEmailY">예</label></div>
			                                            <input type="radio" value="no" name="agreeEmail" id="agreeEmailN" disabled="disabled" checked="checked">
			                                            <div class="txt"><label for="agreeEmailN">아니오</label></div>
	                                            	</c:otherwise>
	                                            </c:choose>
	                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn_wrap m1" id="btnDiv">
	                                <div class="btn left" onclick="location.reload()">
	                                    <div class="txt">취소</div>
	                                </div>
	                                <div class="btn right" onclick="save()">
	                                    <div class="txt">저장</div>
	                                </div>
	                            </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
    
    <script>
 		// 아이디, 비번 한글입력 방지
 		$(document).ready(function(){
 			$("input[id=id]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
 				}
 			});
 			$("input[id=nick]").keyup(function(event){
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-z0-9ㄱ-ㅎㅏ-ㅣ가-힣]/gi,''));
 				}
 			});
 			$("input[id=email1]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-z0-9_-]/gi,''));
 				}
 			});
 			$("input[id=email2]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-z0-9.]/gi,''));
 				}
 			});
 			$("input[id=nowPw]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-zA-Z0-9]/gi,''));
 				}
 			});
 			$("input[id=pw]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-zA-Z0-9]/gi,''));
 				}
 			});
 			$("input[id=pw1]").keyup(function(event){ 
 				if (!(event.keyCode >=37 && event.keyCode<=40)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^a-zA-Z0-9]/gi,''));
 				}
 			});
 			$("input[id=phone2]").keyup(function(event){ 
 				if (!(event.keyCode >=48 && event.keyCode<=57)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^0-9]/gi,''));
 				}
 			});
 			$("input[id=phone3]").keyup(function(event){ 
 				if (!(event.keyCode >=48 && event.keyCode<=57)) {
 					var inputVal = $(this).val();
 					$(this).val(inputVal.replace(/[^0-9]/gi,''));
 				}
 			});
 		});
    	// 회원정보 변경
    	function infoModify(){
    		$("#nickTxt").css("display", "none");
    		$("#nowPwTxt").css("display", "none");
    		$("#pwTxt").css("display", "none");
    		$("#pw1Txt").css("display", "none");
    		$("#addr1Txt").css("display", "none");
    		$("#addr2Txt").css("display", "none");
    		$("#phone1Txt").css("display", "none");
    		$("#phone2Txt").css("display", "none");
    		$("#phone3Txt").css("display", "none");
    		$("#email1Txt").css("display", "none");
    		$("#email2Txt").css("display", "none");
    		$("#agreeSmsY").prop("disabled", false);
    		$("#agreeSmsN").prop("disabled", false);
    		$("#agreeEmailY").prop("disabled", false);
    		$("#agreeEmailN").prop("disabled", false);
    		$("#nick").css("display", "inline-block");
    		$("#nickBtn").css("display", "inline-block");
    		$("#nickTxt1").css("display", "inline-block");
    		$("#nowPw").css("display", "inline-block");
    		$("#pw").css("display", "inline-block");
    		$("#pwTxt1").css("display", "inline-block");
    		$("#pw1").css("display", "inline-block");
    		$("#addr1").css("display", "inline-block");
    		$("#addr2").css("display", "inline-block");
    		$("#phone1").css("display", "inline-block");
    		$("#phone2").css("display", "inline-block");
    		$("#phone3").css("display", "inline-block");
    		$("#email1").css("display", "inline-block");
    		$("#emailSelect").css("display", "inline-block");
    		$("#email2").css("display", "inline-block");
    		$("#btnDiv").css("display", "block");
    	}
    	// 필명 변경 여부 확인
    	var nickChange = 0;
    	$("#nick").keyup(function(){
    		nickChange ++;
    	});
    	// 필명 중복체크
    	var nickCheck_ = 0;
    	function nickCheck(){
    		var nick = $("#nick").val();
    		if(nick==""){
    			alert("닉네임을 입력해주세요.");
    		} else if(nick.length<2){
    			alert("닉네임은 2~8자로 설정해주세요.");
    		} else {
    			$.ajax({
    				type : "post",
    				url : "/member/nickCheck/"+nick,
    				async : false,
    				success : function(txt){
    					if(txt){
    						$("#nick").css("color", "green");
    						$("#nick").val(nick+"(사용가능)");
    						nickCheck_ ++;
    						nickChange = 0;
    					} else {
    						$("#nick").css("color", "red");
    						$("#nick").val(nick+"(사용불가)");
    						nickCheck_ ++;
    						nickChange = 0;
    					}
    				}
    			});
    		}
    	}
    	// 이메일 선택
    	$("#emailSelect").change(function(){
    		var email_ = $("#emailSelect").val();
    		if(email_=="choose"){
    			$("#email2").val("");
    			$("#email2").focus();
    			$("#email2").prop("readonly", false);
    		} else {
    			$("#email2").val(email_);
    			$("#email2").prop("readonly", true);
    		}
    	});
    	// 회원정보 저장
    	function save(){
    		var nick = $("#nick").val();
    		var nowPw = $("#nowPw").val();
    		var pw = $("#pw").val();
    		var pw1 = $("#pw1").val();
    		var addr1 = $("#addr1").val();
    		var addr2 = $("#addr2").val();
    		var phone1 = $("#phone1").val();
    		var phone2 = $("#phone2").val();
    		var phone3 = $("#phone3").val();
    		var phone = phone1+"-"+phone2+"-"+phone3;
    		var email1 = $("#email1").val();
    		var email2 = $("#email2").val();
    		var email = email1+"@"+email2;
    		var agreeSms = $("#agreeSmsY").prop("chekced") ? "y" : "n";
    		var agreeEmail = $("#agreeEmailY").prop("checked") ? "y" : "n";
    		if(nick=="" || addr1=="choose" || addr2=="" || phone1=="choose" || phone2=="" || phone3=="" || email1=="" || email2==""){
    			alert("입력하지 않은 항목이 있습니다.");
    		} else if(nickChange!=0){
    			if(nickCheck_==0){
        			alert("닉네임 중복체크를 해주세요.");
        		} else if(nick.indexOf("능")<0){
	    			alert("이미 사용중인 닉네임입니다.");
    			}
    		} else {
    			if(nowPw!="${login.pw }"){
    				alert("현재 비밀번호가 일치하지 않습니다.");
    			} else {
    				if(pw.length>0){
    					if(pw.length<6){
    						alert("비밀번호는 6~16자로 설정해주세요.");
    					} else if(nowPw==pw){
    						alert("변경할 비밀번호는 현재 비밀번호와 같을 수 없습니다.");
    					} else if(pw!=pw1){
    						alert("비밀번호와 비밀번호 확인히 일치하지 않습니다.");
    					} else {
    						// 비밀번호 변경
    						nick = nick.substring(0, nick.indexOf('('));
    						$.ajax({
    							type : "post",
    							url : "/member/pwChange/${login.id }/"+nick+"/"+pw+addr1+"/"+addr2+"/"+phone+"/"+agreeSms+"/"+agreeEmail+"?email="+email,
    							async : false,
    							success : function(txt){
    								if(txt){
        								alert("변경되었습니다.");
        								location.reload();
        							} else {
        								alert("변경에 실패하였습니다.\n잠시후 다시 시도해주세요.");
        							}
    							}
    						});
    					}
    				} else {
    					// 정보 변경
    					if(nickChange!=0){
	    					nick = nick.substring(0, nick.indexOf('('));
    					} else {
    						if(nickChange==0 && nickCheck_!=0){
    							nick = nick.substring(0, nick.indexOf('('));
    						}
    					}
    					$.ajax({
    						type : "post",
    						url : "/member/change/${login.id }/"+nick+"/"+addr1+"/"+addr2+"/"+phone+"/"+agreeSms+"/"+agreeEmail+"?email="+email,
    						async : false,
    						success : function(txt){
    							if(txt){
    								alert("변경되었습니다.");
    								location.reload();
    							} else {
    								alert("변경에 실패하였습니다.\n잠시후 다시 시도해주세요.");
    							}
    						}
    					});
    				}
    			}
    		}
    	}
    </script>
    
</html>