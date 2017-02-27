<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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