<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<main>
	<h1>채용 공고 상세 페이지</h1>
	<section>
		<div><!-- 제목 + 채용정보 -->
			<div>
				<h2>제목 : ${rnd.title}</h2>
			</div>
			<div>
				<p>회사명: ${rnd.cName}</p>
				<p>모집 시작일 : <fmt:formatDate value="${rnd.strDate}" pattern="yyyy-MM-dd"/></p>
				<p>모집 마감일 : <fmt:formatDate value="${rnd.endDate}" pattern="yyyy-MM-dd"/></p>
				<p>채용구분 : ${rnd.rdValue}</p>
				<p>전형구분 : ${rnd.tValue}</p>
			</div>
		</div>
		<div><!-- 내용 -->
			<p>내용 : ${rnd.contents}</p>
		</div>
		<div>
			<input type="button" value="수정" onclick="location.href='edit?id=${rnd.id}'"/>
			<input type="button" value="목록" onclick="location.href='index'"/>
		</div>
	</section>
</main>