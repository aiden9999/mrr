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
        <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Kt7lF8xhbiSeCfSOCGEW"></script>
        <script type="text/javascript">
            try {document.execCommand('BackgroundImageCache', false, true);} catch(e) {}
        </script>
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
        <div class="sub01_04">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/mrr/aside.jsp"/>
                </aside>
                <div class="contents">
                    <div class="contents_tit">
                        <div class="tit">미래로 입시컨설팅 오시는길</div>
                        <div class="txt">Home > 미래로소개 > 오시는길</div>
                    </div>
                    <section class="section01">
                        <div class="naver_map" id="map"></div>

                        <script type="text/javascript">
                        var HOME_PATH = window.HOME_PATH || '.';
                       	
                        var cityhall = new naver.maps.LatLng(37.505233, 127.050118),
                            map = new naver.maps.Map('map', {
                                center: cityhall,
                                zoom: 10
                            }),
                            marker = new naver.maps.Marker({
                                map: map,
                                position: cityhall
                            });

                        var contentString = [
                                '<div class="iw_inner">',
                                '<img src="'+ HOME_PATH +'/img/logo.png" width="195" height="56" alt="미래로입시컨설팅" class="thumb" /><br />',
                                '</div>'
                            ].join('');

                        var infowindow = new naver.maps.InfoWindow({
                            content: contentString,
                            maxWidth: 200,
                            backgroundColor: "#eee",
                            borderColor: "#2db400",
                            borderWidth: 2,
                            anchorSize: new naver.maps.Size(30, 30),
                            anchorSkew: true,
                            anchorColor: "#eee",
                            pixelOffset: new naver.maps.Point(70, 60)
                        });

                        naver.maps.Event.addListener(marker, "click", function(e) {
                            if (infowindow.getMap()) {
                                infowindow.close();
                            } else {
                                infowindow.open(map, marker);
                            }
                        });

                        </script>
                    </section>
                    <section class="section02">
                        <div class="info_wrap">
                            <div class="info_tit">주소</div>
                            <div class="info_txt">서울시 강남구 삼성동 141-26 EK타워 4층 미래로입시컨설팅</div>
                        </div>
                        <div class="info_wrap">
                            <div class="info_tit">찾아오시는길</div>
                            <div class="info_txt">
                                <div class="circle">
                                    <div class="number">2</div>
                                </div>
                                <div class="txt">2호선 (선릉역) 10번출구 바로 앞</div>
                            </div>
                        </div>
                        <div class="info_wrap">
                            <div class="info_tit">상담전화</div>
                            <div class="info_txt">
                                <span class="txt1">1522 - 3460</span><br>
                                월~금 오전10시~오후9시 (점심시간 오전11시30분~오후 1시)<br>
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