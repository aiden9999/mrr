<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
        <li>
            <a href="/info" class="sel" id="infoTab">
                <span>내정보</span>
            </a>
        </li>
        <li>
            <a href="/board" id="boardTab">
                <span>내가 쓴 글</span>
            </a>
        </li>
        <li>
            <a href="/recomend" id="recomendTab">
                <span>내가 추천한 글</span>
            </a>
        </li>
    </ul>
</div>

<script>
	$(document).ready(function(){
		$("#infoTab").removeClass("sel");
		$("#boardTab").removeClass("sel");
		$("#recomendTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>