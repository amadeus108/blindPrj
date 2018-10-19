<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main>
	<section>
		<h1>공고 수정 페이지</h1>
		<form method="POST">
		<ul>
			<li>
				<!-- Company 테이블에서 가져오기 -->
				<label>회사명</label>
				<select>
					<option>선택</option>
					<c:forEach var="company" items="${companyList}">
						<option>${company.name}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<!-- Recruit_Notice에 입력 -->
				<label>제목</label>
				<input type="text" value="${rnl.title}"/>
			</li>
			<li>
				<label>모집 시작일</label>
				<input type="date" value="${rnl.strDate}"/>
			</li>			
			<li>
				<label>모집 마감일</label>
				<input type="date" value="${rnl.endDate}"/>
			</li>
			<li>
				<!-- Recruit_Division 테이블에서 가져오기 -->
				<label>채용 구분</label>
				<select>
					<option>선택</option>
					<c:forEach var="rdl" items="${recruitDivisionList}">
						<option>${rdl.value}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<label>내용</label>
				<textarea rows="20" cols="100">${rnl.contents}</textarea>
			</li>
		</ul>
		<input type="submit" value="저장" />
		</form>
	</section>
</main>