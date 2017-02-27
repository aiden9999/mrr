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
        <div class="mypage01 mypage02 mypage03 join01_02">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/member/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">마이 페이지</div>
                        <div class="txt">Home > 마이페이지 > 내가 추천한 글</div>
                    </section>
                    <section class="section01">
                        <div class="inner">
                            <div class="info_write_wrap">
                                <div class="info_write_tit">
                                    <div class="tit">내가 추천한 글</div>
                                    <div class="line"></div>
                                </div>
                            </div>
                            <div class="wrote_wrap">
                                <div class="wrote_box">
                                    <div class="wrote_tit_wrap">
                                        <div class="wrote_tit">합격 후기</div>
                                        <div class="wrote_tit">작성일</div>
                                    </div>
                                    <div class="wrote_content_wrap">
                                        <c:choose>
                                    		<c:when test="${pass != null }">
                                    			<c:forEach var="t" items="${pass }">
			                                        <div class="txt_wrap">
			                                            <div class="txt">${t.title }</div>
			                                            <div class="txt img">
			                                                <img src="/img/mypage/heart.png">
			                                            </div>
			                                            <div class="txt m1">(${t.recomend })</div>
			                                        </div>
			                                        <div class="txt m2">${t.day }</div>
                                    			</c:forEach>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<div class="wrote_content_wrap">
			                                        <div class="txt1">작성하신 글이 없습니다.</div>
			                                    </div>
                                    		</c:otherwise>
                                    	</c:choose>
                                   	</div>
                                </div>
                                <div class="wrote_box">
                                    <div class="wrote_tit_wrap">
                                        <div class="wrote_tit">컨설팅 후기</div>
                                        <div class="wrote_tit">작성일</div>
                                    </div>
                                    <div class="wrote_content_wrap">
                                        <c:choose>
                                    		<c:when test="${consulting != null }">
                                    			<c:forEach var="t" items="${consulting }">
			                                        <div class="txt_wrap">
			                                            <div class="txt">${t.title }</div>
			                                            <div class="txt img">
			                                                <img src="/img/mypage/heart.png">
			                                            </div>
			                                            <div class="txt m1">(${t.recomend })</div>
			                                        </div>
			                                        <div class="txt m2">${t.day }</div>
                                    			</c:forEach>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<div class="wrote_content_wrap">
			                                        <div class="txt1">작성하신 글이 없습니다.</div>
			                                    </div>
                                    		</c:otherwise>
                                    	</c:choose>
                                    </div>
                                </div>
                            </div>
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