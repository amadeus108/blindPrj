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
		<h1 class="hidden">채용공고 등록 페이지</h1>
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
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<input type="date" class="form-control date-s" name="strDate" value="<fmt:formatDate value="${now}" type="date" pattern="yyyy-MM-dd"/>" /> 
						~ 
						<input type="date" class="form-control date-s" name="endDate" value="<fmt:formatDate value="${rn.endDate}" type="date" pattern="yyyy-MM-dd" />" />
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
						<textarea name="contents" class="form-control" id="exampleFormControlTextarea1" rows="20"></textarea>
					</td>
				</tr>
			</table>
			<!-- 추가 끝-->
			<input type="submit" class="add-btn btn btn-default" value="저장"/>
		</form>
		
		<!-- 원본 -->
<!-- 		<form method="POST"> -->
<!-- 		<ul> -->
<!-- 			<li> -->
<!-- 				Company 테이블에서 가져오기 -->
<!-- 				<label>회사명</label> -->
<!-- 				<select name="companyId"> -->
<!-- 					<option>선택</option> -->
<%-- 					<c:forEach var="company" items="${companyList}"> --%>
<%-- 						<option value="${company.id}">${company.name}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				Recruit_Notice에 입력 -->
<!-- 				<label>제목</label> -->
<!-- 				<input type="text" name="title"/> -->
<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				<label>모집 시작일</label> -->
<%-- 				<c:set var="now" value="<%=new java.util.Date()%>" /> --%>
<%-- 				<input type="date" name="strDate" value="<fmt:formatDate value="${now}" type="date" pattern="yyyy-MM-dd" />"/> --%>
<!-- 			</li>			 -->
<!-- 			<li> -->
<!-- 				<label>모집 마감일</label> -->
<!-- 				<input type="date" name="endDate" /> -->
<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				Recruit_Division 테이블에서 가져오기 -->
<!-- 				<label>채용 구분</label> -->
<!-- 				<select name="recruitDivisionId"> -->
<!-- 					<option>선택</option> -->
<%-- 					<c:forEach var="rdl" items="${recruitDivisionList}"> --%>
<%-- 						<option value="${rdl.id}">${rdl.value}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				Type 테이블에서 가져오기 -->
<!-- 				<label>전형 구분</label> -->
<!-- 				<select name="typeId"> -->
<!-- 					<option>선택</option> -->
<%-- 					<c:forEach var="t" items="${typeList}"> --%>
<%-- 						<option value="${t.id}">${t.value}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				<label>내용</label> -->
<!-- 				<textarea rows="20" cols="100" name="contents"></textarea> -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 		<input type="submit" value="저장" /> -->
<!-- 		</form> -->
	</section>
</main>