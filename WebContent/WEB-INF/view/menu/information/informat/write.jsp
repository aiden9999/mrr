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
        <div class="sub05_02_02 sub05_04_02">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/community/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">입시정보</div>
                        <div class="txt">Home > 입시정보 > 입시정보</div>
                    </section>
                    <form action="/informat/writeSave" enctype="multipart/form-data" method="post" id="form">
	                    <section class="section01">
	                        <div class="board_tit">
	                            <div class="tit">제목</div>
	                            <input type="text" name="title" placeholder="제목 입력란">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" name="file" id="addFile" class="board_add_hidden">
	                        </div>
	                        <div class="board_contents_wrap">
	                            <textarea placeholder="내용을 입력해주세요" name="content"></textarea>
	                        </div>
<!-- 	                        <div class="board_password_wrap"> -->
<!-- 	                            <div class="tit">비밀번호</div> -->
<!-- 	                            <input type="password" id="board_password"> -->
<!-- 	                            <div class="txt">(4자리 이상 10자리 이하의 비밀번호를 설정 해주세요)</div> -->
<!-- 	                        </div> -->
	                        <div class="btn_wrap m1">
	                            <div class="btn left" onclick="history.back()">
	                                <div class="txt">취소</div>
	                            </div>
	                            <div class="btn right" onclick="$('#form').submit()">
	                                <div class="txt">등록</div>
	                            </div>
	                        </div>
	                    </section>
					</form>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
</html>