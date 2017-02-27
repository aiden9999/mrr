<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="hmenu_wrap">
	<div class="inner">
		<div class="sns_wrap">
			<div class="facebook" onclick="window.open('https://www.facebook.com/mrr.co.kr/')">
				<div class="img">
					<img src="/img/main/facebook.png">
				</div>
				<div class="txt">facebook</div>
			</div>
		</div>
		<c:if test="${login == null }">
			<div class="hmenu">
				<a href="/login">
					<div class="txt">
						<span>로그인</span>
					</div>
				</a>
<!-- 				<a href="/join"> -->
<!-- 					<div class="txt join"> -->
					<div class="txt join" onclick="javascript: alert('준비중입니다.')">
						<span>회원가입</span>
					</div>
				</a>
			</div>
		</c:if>
	</div>
</div>
<div class="inner">
	<div class="header_contents">
		<div class="prize">
			<img src="/img/main/prize1.png">
			<img src="/img/main/prize2.png">
			<img src="/img/main/prize3.png">
		</div>
		<div class="logo">
			<a href="/">
				<img src="/img/logo.png">
			</a>
		</div>
		<c:choose>
			<c:when test="${login != null && login.admin == '메인관리자' }">
				<div class="since" align="right">
					Since 2004<br>
					today : ${todayVisit } / total : ${totalVisit }
				</div>
			</c:when>
			<c:otherwise>
				<div class="since" align="right">
					Since 2004<br>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="gnb_wrap">
		<ul>
			<a href="/info/intro" id="hInfoTab">
				<li class="gnb"><span>미래로소개</span></li>
			</a>
			<a href="/uconsulting/susi" id="hUconsultingTab">
				<li class="gnb"><span>대입컨설팅</span></li>
			</a>
			<a href="/hconsulting/depart" id="hHconsultingTab">
				<li class="gnb"><span>고입컨설팅</span></li>
			</a>
			<a href="/information/doctor" id="hInformationTab">
				<li class="gnb"><span>입시정보</span></li>
			</a>
			<a href="/community" id="hCommunityTab">
				<li class="gnb"><span>커뮤니티</span></li>
			</a>
		</ul>
	</div>
</div>

<script>
	$(document).ready(function(){
		$("#hIntroTab").removeClass("sel");
		$("#hUconsultingTab").removeClass("sel");
		$("#hHconsultingTab").removeClass("sel");
		$("#hInformationTab").removeClass("sel");
		$("#hCommunityTab").removeClass("sel");
		$("#${hMenu }Tab").addClass("sel");
	});
</script>