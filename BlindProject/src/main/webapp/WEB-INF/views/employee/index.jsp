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
		<div>
			<p>총 ${page.getTotalCount()} 개의 게시물이 있습니다.</p>
		</div>
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
<!-- 		<div> -->
<%-- 			<p>총 게시물 수는 ${page.getTotalCount()} 입니다.</p> --%>
<%-- 			<p>현재 페이지 번호는 ${page.getPageNum()} 입니다.</p> --%>
<%-- 			<p>현재 블록 번호는 ${page.getCurrentBlock()} 입니다.</p> --%>
<!-- 		</div> -->
		<table>
			<tr>
				<td>
					<c:if test="${page.prev}">
						<a href="?q=${param.q}&p=${page.getStartPage()-1}">&laquo;</a>
					</c:if>
					<c:forEach var="idx" begin="${page.getStartPage()}" end="${page.getEndPage()}">
						<a href="?q=${param.q}&p=${idx}">${idx}</a>
					</c:forEach>
					<c:if test="${page.next}">
						<a href="?q=${param.q}&p=${page.getEndPage()+1}">&raquo;</a>
					</c:if>
				</td>
			</tr>
		</table>
		<input type="button" class="add-btn" value="추가" />
	</section>
</main>


