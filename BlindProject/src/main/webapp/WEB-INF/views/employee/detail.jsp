<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link href="../resources/css/employee/index.css" type="text/css" rel="stylesheet" /> -->
<link href="../resources/css/employee/detail.css" type="text/css" rel="stylesheet" />
<% 
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");
%>

<main id="main">
	<h1 class="hidden">채용 공고 상세 페이지</h1>
	<section id="section">
		<div class="detailList"><!-- 제목 + 채용정보 -->
			<table class="table">
				<tr>
					<th class="th">제목</th>
					<td colspan="3">${rnd.title}</td>
				</tr>
				<tr>
					<th class="th">회사명</th>
					<td>${rnd.cName}</td>
					<th class="th">모집기간</th>
					<td><fmt:formatDate value="${rnd.strDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${rnd.endDate}" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<th class="th">채용구분</th>
					<td>${rnd.rdValue}</td>
					<th class="th">전형구분</th>
					<td>${rnd.tValue}</td>
				</tr>
				<tr>
					<th class="th-content">내용</th>
<%-- 					<td colspan="3">${rnd.contents}</td> --%>
					<td colspan="3">${fn:replace(rnd.contents, cn, br)}</td>
				</tr>
			</table>
			
<!-- 			<div> -->
<%-- 				<h2>제목 : ${rnd.title}</h2> --%>
<!-- 			</div> -->
<!-- 			<div> -->
<%-- 				<p>회사명: ${rnd.cName}</p> --%>
<%-- 				<p>모집 시작일 : <fmt:formatDate value="${rnd.strDate}" pattern="yyyy-MM-dd"/></p> --%>
<%-- 				<p>모집 마감일 : <fmt:formatDate value="${rnd.endDate}" pattern="yyyy-MM-dd"/></p> --%>
<%-- 				<p>채용구분 : ${rnd.rdValue}</p> --%>
<%-- 				<p>전형구분 : ${rnd.tValue}</p> --%>
<!-- 			</div> -->
		</div>
<!-- 		<div> -->
<%-- 			<span>내용 : ${rnd.contents}</span> --%>
<!-- 		</div> -->
		<div>
			<button type="button" class="add-btn btn btn-default" onclick="location.href='edit?id=${rnd.id}'">수정</button>
			<button type="button" class="add-btn btn btn-default" onclick="location.href='index'">목록</button>
		</div>
	</section>
</main>