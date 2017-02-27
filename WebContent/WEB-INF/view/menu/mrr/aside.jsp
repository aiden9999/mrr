<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
        <li>
            <a href="/info/intro" id="introTab">
                <span>미래로 소개</span>
            </a>
        </li>
        <li>
            <a href="/info/activity" id="activityTab">
                <span>미래로 활동</span>
            </a>
        </li>
        <li>
            <a href="/info/professor" id="professorTab">
                <span>전문교수</span>
            </a>
        </li>
        <li>
            <a href="/info/contact" id="contactTab">
                <span>오시는길</span>
            </a>
        </li>
    </ul>
</div>

<script>
	$(document).ready(function(){
		$("#introTab").removeClass("sel");
		$("#activityTab").removeClass("sel");
		$("#professorTab").removeClass("sel");
		$("#contactTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>