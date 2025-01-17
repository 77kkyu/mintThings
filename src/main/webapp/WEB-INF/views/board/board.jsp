<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>   

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Board</title>
	<!-- App favicon -->
    <link rel="shortcut icon" href="../resources/static/assets/images/favicon.ico">

	<!-- App css -->
	<link href="../resources/static/assets/css/modern/app-modern.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />
<style>
.title{
	min-height: 30px;
    margin: -70px 0 0 -300px;
    border-bottom: 0px solid #e8e8e8;
    text-align: center;
}

.title h2{
	font-size: 22px;
    font-weight: 400;
    font-family: 'Playfair Display',sans-serif,'Nanum Barun Gothic' !important;
    letter-spacing: 0.9px;
}

h2#boardTitle{
	margin: 15px auto;
    margin-bottom: 0;
    padding: 0 0 5px 0px;
    font-size: 22px;
    font-weight: 400;
    font-family: 'Playfair Display',sans-serif,'Nanum Barun Gothic' !important;
    letter-spacing: 0.9px;
    display: inline;
    zoom: 1;
    border-bottom: 3px double #E2E3E4;
    width: 600px;
}

.title p {
    margin: 10px 0px 10px 7px;
    padding: 0 0 0 0px;
    color: #939393;
    vertical-align: bottom;
}

font[Attributes Style] {
    color: rgb(85, 85, 85);
}

div.content-page1{
    margin-left: 240px;
    overflow: hidden;
    padding: 70px 15px 65px 15px;
    min-height: 80vh;
}
</style>
</head>
<body>
    <div class="content-page1">
        <div class="content" style="margin-top: -20px;">
            <!-- Start Content--> 
		    <div class="content-page" style="margin-left: 0px;">   
		    	<div class="content">
		    		<div class="title" >
		    			<h2 id="boardTitle">
		    				<font color="#555555" style="font-size: 24px;">&emsp;&emsp;&emsp;&emsp;NOTICE&emsp;&emsp;&emsp;&emsp;</font>
		    			</h2>
		    			<p>공지사항입니다.</p>
		    		</div>
			    	<div class="container">
				    	<table class="table table-hover" style="margin-left:-140px; width: 1500px;">
				    		<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회</th>
							</tr>
				    		</thead>
				    		<c:forEach var="list" items="${list}">
					    		<tbody>
					    		<tr>
					    			<td>${list.noticeNo}</td>
					    			<td><a href="/board/detail?noticeNo=${list.noticeNo}">${list.noticeTitle}</a></td>
					    			<td>${list.noticeWriter}</td>
					    			<td><fmt:formatDate value="${list.noticeRegdate}" pattern="yyyy-MM-dd"/></td>
					    			<td>${list.noticeViewCnt}</td>
					    		</tr>
					    		
					    		</tbody>
				    		</c:forEach>
				    	</table>
			    	</div>
		    	</div>
		    </div>  
        </div> 
        <div class="ec-base-button">
				<span class="gRight">
					<a href="/board/insert" class="btn btn-info" style="text-decoration: none; margin-left: 1180px; margin-top: -40px;">글쓰기</a>
				</span>
			</div>
	</div> 
</body>
</html>