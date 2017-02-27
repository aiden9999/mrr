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
        <div class="sub05_02_01 sub05_04_01">
            <div class="inner">
                <aside class="side_menu">
                	<c:import url="/WEB-INF/view/menu/community/aside.jsp"/>
                </aside>
                <div class="contents">
                    <section class="contents_tit">
                        <div class="tit">입시정보</div>
                        <div class="txt">Home > 입시정보 > 입시정보</div>
                    </section>
                    <section class="section01">
                        <div class="board_tit">
                            <div class="tit">제목</div>
                            <div class="txt" id="titleDiv">${view.title }</div>
                            <input type="text" id="title" value="${view.title }"/>
                        </div>
                        <div class="board_contents_wrap">
                            <div class="board_txt" id="contentDiv">${view.content }</div>
                            <textarea id="content">${view.content }</textarea>
                        </div>
                        <div class="board_info_wrap">
                            <c:if test="${view.file != null }">
	                            <div class="board_rcm_wrap" onclick="down(${view.auto})">
	                                <img src="/img/download.png"/>
	                                <div class="txt">첨부파일</div>
	                                <div class="txt">(<font>${view.filename }</font>)</div>
	                            </div>
                        	</c:if>
                            <div class="board_info_txt">
                                <div class="txt">
                                	${view.nick }
                                </div>
                                <div class="txt">
                                	${view.day }
                                </div>
                                <div class="txt">
									조회(${view.count })
                                </div>
                            </div>
                        </div>
                        <div class="board_modify_wrap">
                        	<c:if test="${login.id == view.id }">
	                            <div class="modify_txt" onclick="modify()" id="modify">
	                                <span>글 수정</span>
	                            </div>
	                            <div class="modify_txt" onclick="cancel()" id="cancel">
	                                <span>취소</span>
	                            </div>
	                            <div class="modify_txt" onclick="remove()" id="remove">
	                                <span>글 삭제</span>
	                            </div>
	                            <div class="modify_txt" onclick="save()" id="save">
	                                <span>저장</span>
	                            </div>
                        	</c:if>
                            <div class="modify_txt" onclick="location.href='/information/informat'">
                                <span>목록으로</span>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer>
        	<c:import url="/WEB-INF/view/main/footer.jsp"/>
        </footer>
        <!-- 삭제 view -->
        <div class="delete_cover" id="removeDiv"></div>
        <div class="delete_confirm" id="removeDiv1">
            <div class="delete_confirm_header">
                <div class="logo">
                    <img src="/img/logo.png">
                </div>
            </div>
            <div class="delete_confirm_contents">
                <div class="delete_txt">삭제 하시겠습니까?</div>
                <div class="btn_wrap m1">
                    <div class="btn left" onclick="$('#removeDiv').hide(), $('#removeDiv1').hide()">
                        <div class="txt">아니오</div>
                    </div>
                    <div class="btn right" onclick="removeYes(${view.auto })">
                        <div class="txt">네</div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
    <script>
    	// 글 수정
    	var title = $("#title").val();
    	var content = $("#content").val();
    	function modify(){
    		$("#titleDiv").css("display", "none");
    		$("#contentDiv").css("display", "none");
    		$("#title").css("display", "inline-block");
    		$("#content").css("display", "block");
    		$("#modify").css("display", "none");
    		$("#cancel").css("display", "inline-block");
    		$("#remove").css("display", "none");
    		$("#save").css("display", "inline-block");
    	}
    	// 글 삭제
    	function remove(){
    		$("#removeDiv").show();
    		$("#removeDiv1").show();
    	}
    	// 취소
    	function cancel(){
    		$("#title").val(title);
    		$("#content").val(content);
    		$("#modify").css("display", "inline-block");
    		$("#cancel").css("display", "none");
    		$("#remove").css("display", "inline-block");
    		$("#save").css("display", "none");
    		$("#title").css("display", "none");
    		$("#content").css("display", "none");
    		$("#titleDiv").css("display", "inline-block");
    		$("#contentDiv").css("display", "block");
    	}
    	// 저장
    	function save(){
    		title = $("#title").val();
    		content = $("#content").val();
    		$.ajax({
    			type : "post",
    			url : "/informat/modify/${view.auto}/"+title+"/"+content,
    			async : false,
    			success : function(txt){
    				if(txt){
    					alert("수정되었습니다.");
    					location.href="/information/informat";
    				} else {
    					alert("수정에 실패하였습니다.\n잠시후 다시 시도해주세요.");
    				}
    			}
    		});
    	}
    	// 삭제 완료
    	function removeYes(num){
    		$.ajax({
    			type : "post",
    			url : "/informat/remove/"+num,
    			async : false,
    			success : function(txt){
    				if(txt){
    					alert("삭제되었습니다.");
    					location.href="/information/informat";
    				} else {
    					alert("삭제에 실패하였습니다.\n잠시후 다시 시도해주세요.");
    				}
    			}
    		});
    	}
    	// 파일다운
    	function down(num){
    		location.href="/informat/down/"+num;
    	}
    </script>
    
</html>