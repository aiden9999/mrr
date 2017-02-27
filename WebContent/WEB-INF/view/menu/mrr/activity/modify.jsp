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
        <div class="sub05_02_02 sub05_04_02 sub01_02_01">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/mrr/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">미래로 입시컨설팅 활동</div>
                        <div class="txt">Home > 미래로소개 > 미래로 활동</div>
                    </section>
                    <form action="/info/activity/modifySave" enctype="multipart/form-data" method="post" id="form">
                    	<input type="hidden" name="auto" value="${map.auto }"/>
	                    <section class="section01">
	                        <div class="board_tit">
	                            <div class="tit">제목</div>
	                            <input type="text" name="title" placeholder="제목 입력란" value="${map.title }">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile" onclick="fileChoose(1)">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" id="addFile1" name="file1" class="board_add_hidden">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile" onclick="fileChoose(2)">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" id="addFile2" name="file2" class="board_add_hidden">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile" onclick="fileChoose(3)">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" id="addFile3" name="file3" class="board_add_hidden">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile" onclick="fileChoose(4)">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" id="addFile4" name="file4" class="board_add_hidden">
	                        </div>
	                        <div class="board_add_wrap">
	                            <div class="add">파일첨부</div>
	                            <label for="addFile" onclick="fileChoose(5)">파 일 선 택</label>
	                            <input class="add_upload_name" disabled="disabled">
	                            <input type="file" id="addFile5" name="file5" class="board_add_hidden">
	                        </div>
	                        <div class="board_contents_wrap">
	                            <textarea placeholder="내용을 입력해주세요" name="content">${map.content }</textarea>
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
	                            <div class="btn right" onclick="save()">
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
    
    <script>
    	// 파일선택
    	function fileChoose(num){
    		$("#addFile"+num).trigger("click");
    		var fileTarget = $('.board_add_wrap .board_add_hidden');
    	    fileTarget.on('change', function(){
    	        if(window.FileReader){
    	            var filename = $(this)[0].files[0].name;
    	        }
    	        else { 
    	            var filename = $(this).val().split('/').pop().split('\\').pop();
    	        }
    	        $(this).siblings('.add_upload_name').val(filename);
    	    });
    	}
    	// 저장
    	function save(){
    		var title = $("#title").val();
    		var content = $("#content").val();
    		if(title == ""){
    			alert("제목을 입력해주세요.");
    		} else if(content == ""){
    			alert("내용을 입력해주세요.");
    		} else {
    			$('#form').submit();
    		}
    	}
    </script>
    
</html>