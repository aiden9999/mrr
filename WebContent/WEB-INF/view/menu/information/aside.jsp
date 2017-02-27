<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="inner">
    <ul>
        <li>
            <a href="/information/doctor" id="doctorTab">
                <span>의·치·한</span>
            </a>
        </li>
        <li>
            <a href="/information/explan" id="explanTab">
                <span>입시설명회</span>
            </a>
        </li>
        <li>
            <a href="/information/seoul" id="seoulTab">
                <span>서울대 면접대비</span>
            </a>
        </li>
        <li>
            <a href="/information/essay" id="essayTab">
                <span>심층논술면접</span>
            </a>
        </li>
        <li>
            <a href="/information/informat" id="informatTab">
                <span>입시정보</span>
            </a>
        </li>
    </ul>
</div>

<script>
	$(document).ready(function(){
		$("#doctorTab").removeClass("sel");
		$("#explanTab").removeClass("sel");
		$("#seoulTab").removeClass("sel");
		$("#essayTab").removeClass("sel");
		$("#informatTab").removeClass("sel");
		$("#${menu }Tab").addClass("sel");
	});
</script>