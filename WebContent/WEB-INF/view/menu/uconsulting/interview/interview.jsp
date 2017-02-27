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
        <div class="sub02_03">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/uconsulting/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">대입컨설팅 면접</div>
                        <div class="txt">Home > 대입컨설팅 > 면접</div>
                    </section>
                    <section class="section01">
                        <img src="/img/sub02/sub02_03/section01.png">
                    </section>
                    <section class="section08">
                        <div class="calendar_tit">
                            <div class="calendar_arrow_wrap">
                                <div class="calrendar_arrow left" onclick="prev()">
                                    <img src="/img/sub02/sub02_03/arrow_left.png">
                                </div>
                                <div class="calrendar_arrow right" onclick="next()">
                                    <img src="/img/sub02/sub02_03/arrow_right.png">
                                </div>
                            </div>
                            <div class="tit_wrap" align="center">
                                <div class="year tit" id="year"></div>
                                <div class="month_num tit" id="month"></div>
                                <div class="month tit" id="eMonth"></div>
                            </div>
                            <div class="today" onclick="today()">오늘로</div>
                        </div>
                        <div class="day_wrap">
                            <div class="day">Sun</div>
                            <div class="day">Mon</div>
                            <div class="day">Tue</div>
                            <div class="day">Wed</div>
                            <div class="day">Thu</div>
                            <div class="day">Fri</div>
                            <div class="day">Sat</div>
                        </div>
                        <table id="calendar"></table>
                        <div class="bottom_txt">
							미래로 입시컨설팅은 <span>학생들에게 맞는 제대로 된 컨설팅</span>을 해 줄 수 있는<br>
							분야별 전문가를 구성하여 학생들이 입시를 준비하는데 도움이 되도록 노력하겠습니다
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
    </body>
    
    <script>
   		var eMonth;
    	$(document).ready(function(){
    		eMonth = new Array("January", "Febuary", "March", "April", "May", "June", "July", "August", "September" ,"October", "November", "December");
    		var date = new Date();
    		var year = date.getFullYear();
    		var month = date.getMonth();
    		$("#year").html(year);
    		$("#month").html(month+1);
    		$("#eMonth").html(eMonth[month]);
    		calendar(year, month);
    	});
    	
    	// 달력
    	function calendar(getYear, getMonth){
    		var calendar = new Date(getYear, getMonth);		// Date 객체 생성
    		var day_of_week = new Array("일", "월", "화", "수", "목", "금", "토");
    		var month_of_year = new Array("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월");
    		var year = calendar.getYear();	// yyyy
    		var month = calendar.getMonth();		// 0~11(1월~12월)
    		var today = calendar.getDate();		// 1~31(1일~31일)
    		var week = calendar.getDay();		// 0~6(일요일~토요일)
    		
    		calendar.setDate(1);		// 1일부터 셋팅
    		
    		var days_of_week = 7;		// 일주일 7일 셋팅
    		var days_of_month = 31;		// 한달 최대 31일 셋팅
    		var html;		// html 소스 변수
    		
    		var tr_start = "<tr>";
    		var tr_end = "</tr>";
    		
    		var td_blank = "<td>";		// 빈칸
    		var td_day = "<td><span>"		// 평일
    		var td_saterday = "<td><span class='txt1'>";		// 토요일
    		var td_sunday = "<td><span class='txt2'>";		// 일요일
    		var td_day_end = "</span></td>";		// 평일, 토요일, 일요일 끝
    		var td_end = "</td>";		// 빈칸 끝
    		
			// 왼쪽 이미지 셋팅
    		html = tr_start+"<th rowspan='6'><div class='tit_wrap'><div class='txt'><span class='txt1'>2017</span><br>입시일정</div>";
    		html += "<div class='img'><img src='/img/sub02/sub02_03/calendar.png'></div></div></th>";
    		// 빈칸 설정
    		for(var i=0; i<calendar.getDay(); i++){
    			html += td_blank+td_end;
    		}
    		
    		// 1일부터 시작
    		for(var i=0; i<days_of_month; i++){
    			// 날짜가 1보다 작을때만 셋팅 -> 1보다 작으면 다음달로 넘어가서 1일로 변환된거
    			if(calendar.getDate()>i){
    				var day = calendar.getDate();		// 날짜
    				var week_day = calendar.getDay();		// 요일
    				
    				// 일요일일 경우 열 변경
    				if(week_day==0){
    					html += tr_start;
    				}
    				
    				switch(week_day){
    				case 0:		// 일요일
    					html += td_sunday+day+td_day_end;
    					break;
    				case 6:		// 토요일
    					html += td_saterday+day+td_day_end;
    					html += tr_end;
    					break;
   					default:	// 평일
   						html += td_day+day+td_day_end;
   						break;
    				}
    			}
    			
    			// 다음 날짜로 넘어감
    			calendar.setDate(calendar.getDate()+1);
    		}
    		
    		html += tr_end;
    		
    		$("#calendar").html(html);
    	}
    	// 이전 달
    	function prev(){
    		var year = $("#year").html();
    		var month = $("#month").html();
    		if(month==1){
    			year --;
	    		calendar(year, 12);
	    		$("#year").html(year);
	    		$("#month").html(12);
	    		$("#eMonth").html(eMonth[11]);
    		} else {
    			calendar(year, month-1);
    			$("#year").html(year);
    			$("#month").html(Number(month)-1);
    			$("#eMonth").html(eMonth[Number(month)-2]);
    		}
    	}
    	// 다음 달
    	function next(){
    		var year = $("#year").html();
    		var month = $("#month").html();
    		if(month==12){
    			year ++;
    			calendar(year, 1);
    			$("#year").html(year);
    			$("#month").html(1);
    			$("#eMonth").html(eMonth[0]);
    		} else {
    			calendar(year, month+1);
    			$("#year").html(year);
    			$("#month").html(Number(month)+1);
    			$("#eMonth").html(eMonth[Number(month)]);
    		}
    	}
    	// 오늘로
    	function today(){
    		var date = new Date();
    		var year = date.getFullYear();
    		var month = date.getMonth();
    		calendar(year, month);
    		$("#year").html(year);
    		$("#month").html(month+1);
    		$("#eMonth").html(eMonth[Number(month)]);
    	}
    </script>
    
</html>