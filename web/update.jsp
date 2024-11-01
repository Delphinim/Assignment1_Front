<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<meta charset="utf-8">
		<title>联系人管理系统</title>
		<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	</head>

	<body style="padding-top: 20px;">
		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<h1>修改联系人</h1><br>
				<form action="/update" method="post">
					<div class="form-group">
						<label>编号</label>
						<input type="text" class="form-control" name=bookId value="${book.bookId}">
					</div>
					<div class="form-group">
						<label>联系人姓名</label>
						<input type="text" class="form-control" name="bookName" value="${book.bookName}">
					</div>
					<div class="form-group">
						<c:choose>
							<c:when test="${book.bookSex == 1}">
								<label class="radio-inline">
									<input type="radio" name="bookSex" id="bookSex" value="1" checked="checked"> 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="bookSex" id="bookSex" value="0"> 女
								</label>
							</c:when>
							<c:when test="${book.bookSex == 0}">
								<label class="radio-inline">
									<input type="radio" name="bookSex" id="bookSex" value="1"> 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="bookSex" id="bookSex" value="0" checked="checked"> 女
								</label>
							</c:when>
						</c:choose>
					</div>
					<div class="form-group">
						<label>地址</label>
						<input type="text" class="form-control" name="bookAdd" value="${book.bookAdd}">
					</div>
					<div class="form-group">
						<label>联系人电话</label>
						<input type="text" class="form-control" name="bookTel" value="${book.bookTel}">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-info">确认修改</button>
					</div>
				</form>
			</div>
		</div>
	</body>

</html>
