<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>		<!-- 경로설정하기 -->
<%@ include file="../include/header.jspf" %>


        <div class="ritekhela-subheader">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>${boardname}</h1>
                        <ul class="ritekhela-breadcrumb">
                            <li><a href="/">홈페이지</a></li>                            
                            <li>매치팀/용병 모집</li>
                            <li>${boardname}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--// SubHeader //-->

        <!--// Content //-->
        <div class="ritekhela-main-content">
<style>

.ListButton {
	background: linear-gradient(to bottom, #000000 5%, #80818a 100%);
	background-color: #000000;
	border-radius: 41px;
	display: inline-block;
	cursor: pointer;
	color: #fafafa;
	font-family: Arial;
	font-size: 18px;
	font-weight: bold;
	padding: 10px 13px;
	text-decoration: none;
}

.ListButton:hover {
	background: linear-gradient(to bottom, #80818a 5%, #000000 100%);
	background-color: #80818a;
}

.ListButton:active {
	position: relative;
	top: 1px;
}

    #title {
    float: left;
    width: 100%;
    background-color: rgba(0,0,0,0.20);
    color: rgba(120,120,120,1);/* #999999; */
    padding: 22px 22px;
    border: none;
    height: 30px;
    margin-bottom: 12px;
    vertical-align: middle !important;
}

    #content {
    float: left;
    width: 100%;
    background-color: rgba(0,0,0,0.20);
    color: rgba(120,120,120,1);/* #999999; */
    padding: 10px 20px 5px 20px;
    border: none;
    height: 140px;
    margin-bottom: 12px;
    vertical-align: middle !important;
}
</style>
            <!--// Main Section //-->
            <div class="ritekhela-main-section ritekhela-fixture-list-full">
                <div class="container">
                    <div class="row">
                        
                        
                        <div class="col-md-12">
                        <form role="form" id="write" method="post">
                        <input type="hidden" name="category" value="${matchDTO.category}">
                        <input type="hidden" name="postno" value="${matchDTO.postno}">
                   	<input type="text" id="title"name="posttitle" value="${matchDTO.posttitle}" placeholder="게시글 제목">
                    <textarea id="content" name="postcontent" placeholder="일시,장소,상세 내용 등 자세히 적어 주세요">${matchDTO.postcontent}</textarea>
                	
                    
                    <input type="submit" value="게시글 수정" class="ListButton">
                </form>
                        </div>
                        <!--// Full Section //-->

                    </div>
                    
                    <script>
       		$("#write").submit( function(e){
       			if (($.trim($("#title").val()) == "")) {
       				alert("제목을 입력하여 주세요");
       				return false;
       			}
       			if (($.trim($("#content").val()) == "")) {
       				alert("내용을 입력하여 주세요");
       				return false;
       			}
       		});
       
       </script>
                </div>
            </div>
            <!--// Main Section //-->

        </div>
        <!--// Content //-->
<%@ include file ="../include/footer.jspf"%>