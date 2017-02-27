<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="search_tit">
	<div class="txt">아이디 찾기</div>
	<div class="img">
		<img src="/img/logo.png">
	</div>
</div>
<div class="search_result_wrap">
	<div class="result_tit_wrap">
		<div class="tit">아이디 조회 결과</div>
		<div class="line"></div>
	</div>
	<c:choose>
		<c:when test="${id!=null }">
			<div class="result_contents_wrap" id="searchSuccess">
				<div class="txt">
					<span id="searchRstId">${id }</span>&nbsp;
					<font id="searchRstDay">(${year }년 ${month }월 ${day }일 가입)</font>
				</div>
			</div>
			<div class="result_click_wrap">
				<div class="click" onclick="location.href='/join'">
					<span>로그인 하기</span>
				</div>
				<div class="click" onclick="searchPw(), $('#popId').hide()">
					<span>비밀번호 찾기</span>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="result_contents_wrap" align="center">
				<span>일치하는 아이디가 없습니다.</span>
			</div>
		</c:otherwise>
	</c:choose>
</div>
<div class="send_btn" onclick="$('#popDiv').hide(), $('#popId').hide()">
	<div class="txt">닫기</div>
</div>