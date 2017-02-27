<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
<!--         <li> -->
<!--             <a href="/pass/" id="passTab"> -->
<!--             <a href="javascript: alert('준비중입니다.')" id="passTab"> -->
<!--                 <span>합격후기</span> -->
<!--             </a> -->
<!--         </li> -->
<!--         <li> -->
<!--             <a href="/consulting/" id="consultingTab"> -->
<!--             <a href="javascript: alert('준비중입니다.')" id="consultingTab"> -->
<!--                 <span>컨설팅후기</span> -->
<!--             </a> -->
<!--         </li> -->
        <li>
            <a href="/alliance/" class="sel" id="allianceTab">
                <span>제휴안내</span>
            </a>
        </li>
        <li>
            <a href="/notice/" id="noticeTab">
                <span>공지사항</span>
            </a>
        </li>
    </ul>
</div>

<script>
	// 메뉴 자동선택
	$(document).ready(function(){
		$("#passTab").removeClass("sel");
		$("#consultingTab").removeClass("sel");
		$("#allianceTab").removeClass("sel");
		$("#noticeTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>