<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${list}" var="vo">
	<div class="bg-light rounded">
		<div style="display: flex; gap: 20px;">
			<div>
				<span class="badge bg-warning">${vo.lounge_pet_type}</span>
			</div>
		</div>
		<a href="one?lounge_id=${vo.lounge_id}">
			<div>
				<h6 style="padding: 5px;">${vo.lounge_title}</h6>
			</div>
			<div style="padding: 5px;">${vo.lounge_content}</div>
		</a>
		<div style="display: flex; justify-content: space-between;">
			<div style="padding: 5px;">${vo.lounge_writer}</div>
			<div style="padding: 5px;">댓글: 0</div>
			<div style="padding: 5px;">좋아요/추천</div>
			<div style="padding: 5px;">${vo.lounge_date}</div>
		</div>
		<hr>
	</div>
</c:forEach>