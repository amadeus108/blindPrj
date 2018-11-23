<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="../resources/css/employee/index.css" type="text/css" rel="stylesheet" />
<script src="../resources/js/employee/index.js"></script>

<main id="main">
	<h1 class="hidden">채용 담당자 페이지</h1>
	<section id="section">
		<div class="search-bar">
<%-- 			<span>총 <span class="bold">${page.getTotalCount()}</span> 개의 게시물이 있습니다.</span> --%>
			<span>총 <b>${page.getTotalCount()}</b> 개의 게시물이 있습니다.</span>
			<form method="GET">
				<select name="s" class="form-control select-s" id="exampleFormControlSelect1">
					<option value="title">제목</option>
					<option value="companyId">회사명</option>
				</select>
				<input type="text" name="q" value="" class="form-control" placeholder="Search for..."/>
				<input type="submit" class="btn btn-default" value="검색" />
			</form>
		</div>
		
		<table class="table rn-table">
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
				<tr class="rn-list">
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
		<div class="paging">
			<button type="button" class="add-btn btn btn-default">공고 추가</button>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-end">
					<c:if test="${page.prev}">
						<li class="page-item disabled"><a class="page-link" href="?q=${param.q}&p=${page.getStartPage()-1}" tabindex="-1">&laquo;</a></li>
					</c:if>
					<c:forEach var="idx" begin="${page.getStartPage()}" end="${page.getEndPage()}">
						<li class="page-item"><a class="page-link" href="?q=${param.q}&p=${idx}">${idx}</a></li>
					</c:forEach>
					<c:if test="${page.next}">
						<li class="page-item"><a class="page-link" href="?q=${param.q}&p=${page.getEndPage()+1}">&raquo;</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</section>
</main>


