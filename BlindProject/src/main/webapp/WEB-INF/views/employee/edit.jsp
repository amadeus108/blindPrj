<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="../resources/css/employee/detail.css" type="text/css" rel="stylesheet" />

<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>

<main id="main">
	<section id="section">
		<h1 class="hidden">공고 수정 페이지</h1>
		<form method="POST">
			<table class="table">
				<tr>
				<!-- Recruit_Notice에 입력 -->
					<th class="th">제목</th>
					<td colspan="3">
						<input type="text" name="title" class="form-control" value="${rn.title}"/>
					</td>
				</tr>
				<tr>
				<!-- Company 테이블에서 가져오기 -->
					<th class="th">회사명</th>
					<td>
						<select name="companyId" class="form-control" id="exampleFormControlSelect1">
							<c:forEach var="cl" items="${companyList}">
								<option value="${cl.id}"<c:if test="${cl.name == rn.cName}">selected</c:if>>${cl.name}</option>
							</c:forEach>
						</select>
					</td>
					<th class="th">모집기간</th>
					<td>
						<input type="date" class="form-control date-s" name="strDate" value="<fmt:formatDate value="${rn.strDate}" type="date" pattern="yyyy-MM-dd"/>" /> ~ <input type="date" class="form-control date-s" name="endDate" value="<fmt:formatDate value="${rn.endDate}" type="date" pattern="yyyy-MM-dd" />" />
					</td>
				</tr>
				<tr>
				<!-- Recruit_Division 테이블에서 가져오기 -->
					<th class="th">채용구분</th>
					<td>
						<select name="recruitDivisionId" class="form-control" id="exampleFormControlSelect1">
							<option>선택</option>
							<c:forEach var="rdl" items="${recruitDivisionList}">
								<option value="${rdl.id}"<c:if test="${rdl.value == rn.rdValue}">selected</c:if>>${rdl.value}</option>
							</c:forEach>
						</select>
					</td>
					<th class="th">전형구분</th>
					<td>
						<select name="typeId" class="form-control" id="exampleFormControlSelect1">
							<option>선택</option>
							<c:forEach var="tl" items="${typeList}">
								<option value="${tl.id}"<c:if test="${tl.value == rn.tValue}">selected</c:if>>${tl.value}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th class="th-content">내용</th>
					<td colspan="3">
						<textarea name="contents" class="form-control" id="exampleFormControlTextarea1" rows="20">${rn.contents}</textarea>
					</td>
				</tr>
			</table>
			<!-- 추가 끝-->
			<input type="submit" class="add-btn btn btn-default" value="저장"/>
		</form>
	</section>
</main>