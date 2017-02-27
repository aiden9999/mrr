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
        <div class="sub05_03">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/community/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">커뮤니티 제휴안내</div>
                        <div class="txt">Home > 커뮤니티 > 제휴안내</div>
                    </section>
                    <section class="section01">
                        <div class="partner_wrap">
                            <div class="partner_tit">
                                학교, 학원, 기타 업체에서 제휴를 원하는 분들은<span> 전화문의 또는 메일로</span> 내용 남겨주세요
                            </div>
                            <div class="input_wrapper">
                                <div class="input_wrap">
                                    <div class="input_tit">
                                        성함
                                    </div>
                                    <input type="text" id="name">
                                </div>
                                <div class="input_wrap">
                                    <div class="input_tit">
                                        전화번호
                                    </div>
                                    <input type="text" id="phone">
                                </div>
                                <div class="input_wrap">
                                    <div class="input_tit">
                                        메일주소
                                    </div>
                                    <input type="text" id="mail">
                                </div>
                                <div class="input_wrap">
                                    <div class="input_tit">
                                        문의내용
                                    </div>
                                    <textarea></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="send_btn">
                            <div class="txt">보 내 기</div>
                        </div>
                    </section>
                    <section class="section02">
                        <div class="img">
                            <img src="/img/sub05/sub05_03/section02.png">
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
</html>