<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="../resources/js/employee/index.js"></script>

<main id="main">
	<h1 class="hidden">채용 담당자 페이지</h1>
	<section id="section">
		<div class="search-bar">
			<form method="GET">
				<input type="text" name="q" value=""/>
				<input type="submit" value="검색" />
			</form>
		</div>
<!-- 		<div> -->
<%-- 			<p>${count}개의 게시물이 있습니다.</p> --%>
<!-- 		</div> -->
		<table class="rn-table">
			<tr class="rn-list">
				<th class="rn-items">No.</th>
				<th class="rn-items">회사명</th>
				<th class="rn-items-l">제목</th>
				<th class="rn-items">모집기간</th>
				<th class="rn-items">채용구분</th>
				<th class="rn-items">전형구분</th>
				<th class="rn-items">작성일</th>
				<!-- <th class="rn-items">지원자 수</th> -->
			</tr>
			<c:forEach var="rnl" items="${recruitNoticeList}">
				<tr>
					<td class="rn-items">${rnl.rNum}</td>
					<td class="rn-items">${rnl.cName}</td>
					<td class="rn-items-l"><a href="detail?id=${rnl.id}">${rnl.title}</a></td>
					<td class="rn-items"><fmt:formatDate value="${rnl.strDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${rnl.endDate}" pattern="yyyy-MM-dd"/></td>
					<td class="rn-items">${rnl.rdValue}</td>
					<td class="rn-items">${rnl.tValue}</td>
					<td class="rn-items"><fmt:formatDate value="${rnl.regDate}" pattern="yyyy-MM-dd"/></td>
				</tr>				
			</c:forEach>
		</table>
		<div>
			<ul>
				<!-- 처음 들어가면 1페이지부터 전체 리스트가 모두 나옴
					검색어를 입력한 경우, 1페이지를 누르면 검색한 후의 1페이지가 나와야한다.
					 -->
<%-- 				<c:forEach var="p" items="page"> --%>
<!-- 					<li><a href=""></a></li> -->
<%-- 				</c:forEach> --%>
				
				<li><a name="p" href="?p=1">1</a></li>
				<li><a name="p" href="?p=2">2</a></li>
				<li><a name="p" href="?p=3">3</a></li>
				<li><a href="">4</a></li>
			</ul>
		</div>
		<input type="button" class="add-btn" value="추가" onclick="location.href='recruit'"/>
	</section>
</main>


