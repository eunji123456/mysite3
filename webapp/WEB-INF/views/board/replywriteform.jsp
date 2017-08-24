<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/assets/css/board.css" rel="stylesheet" type="text/css">
<title>답글달기 </title>
</head>
<body>
	<div id="container">
		
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		
		<div id="content">
			<div id="board">
				<form class="board-form" method="post" action="${pageContext.request.contextPath}/bd/replywrite">
					<table class="tbl-ex">
						<tr>
							<th colspan="2">글쓰기</th>
						</tr>
						<tr>
							<td class="label">제목</td>
							<td><input type="text" name="title" value=""></td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td>
								<textarea id="content" name="content"></textarea>
							</td>
						</tr>
						
					</table>
					<input type="text" name="no" value="${param.no}">
					<input type="text" name="groupNo" value="${vo.groupNo}">
					<input type="text" name="orderNo" value="${vo.orderNo}">
					<input type="text" name="depth" value="${vo.depth}">
					<input type="text" name="userNo" value="${authUser.no}">
					<input type="text" name="userName" value="${authUser.name}">
					<input type="text" name="bparent" value="${vo.bparent}">
					<div class="bottom">
						<a href="${pageContext.request.contextPath}/board/list">취소</a>
						<input type="submit" value="등록">
					</div>
				</form>				
			</div>
		</div>

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		
	</div><!-- /container -->
</body>
</html>		
		
