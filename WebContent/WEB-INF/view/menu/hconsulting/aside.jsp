<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
        <li>
            <a href="/hconsulting/depart" id="departTab">
                <span>학생부관리</span>
            </a>
        </li>
        <li>
            <a href="/hconsulting/compare" id="compareTab">
                <span>비교과관리</span>
            </a>
        </li>
        <li>
            <a href="/hconsulting/program" id="programTab">
                <span>프로그램</span>
            </a>
        </li>
    </ul>
</div>

<script>
	$(document).ready(function(){
		$("#departTab").removeClass("sel");
		$("#compareTab").removeClass("sel");
		$("#programTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>