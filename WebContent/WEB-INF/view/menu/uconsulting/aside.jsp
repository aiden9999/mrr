<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
        <li>
            <a href="/uconsulting/susi" id="susiTab">
                <span>수시합격전략</span>
            </a>
        </li>
        <li>
            <a href="/uconsulting/introduce" id="introduceTab">
                <span>자기소개서</span>
            </a>
        </li>
        <li>
            <a href="/uconsulting/interview" id="interviewTab">
                <span>면접</span>
            </a>
        </li>
        <li>
            <a href="/uconsulting/jungsi" id="jungsiTab">
                <span>정시합격전략</span>
            </a>
        </li>
        <li>
            <a href="/uconsulting/jesu" id="jesuTab">
                <span>재수생컨설팅</span>
            </a>
        </li>
    </ul>
</div>

<script>
	$(document).ready(function(){
		$("#susiTab").removeClass("sel");
		$("#introduceTab").removeClass("sel");
		$("#interviewTab").removeClass("sel");
		$("#jungsiTab").removeClass("sel");
		$("#consultingTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>