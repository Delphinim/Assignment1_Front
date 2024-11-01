<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<meta charset="utf-8">
		<title>通讯录管理系统</title>
		<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	</head>

	<body style="padding-top: 50px;">
		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<h1>联系人列表</h1><br/>

				<!--<form class="form-inline" action="/SearchServlet" method="post">
					<div class="form-group">
						<label for="name" style=" font-size: 16px">姓名:</label>
						<input type="text" class="form-control"  style="width: 360px" id="name" placeholder="输入查找的名字" name="bookName" >
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>-->

				<br>
				<table class="table">
					<thead>
						<td>编号</td>
						<td>联系人姓名</td>
						<td>性别</td>
						<td>地址</td>
						<td>联系人电话</td>
						<td>操作</td>
					</thead>
					<tbody>
						<c:forEach items="${bookList}" var="book">
		                    <tr>
		                    	<td>${book.bookId}</td>
								<td>${book.bookName}</td>
								<td>
									<c:choose>
										<c:when test="${book.bookSex == 0}">女</c:when>
										<c:when test="${book.bookSex == 1}">男</c:when>
									</c:choose>
								</td>
								<td>${book.bookAdd}</td>
		                        <td>${book.bookTel}</td>

		                        <td>
		                            <a class="btn btn-info btn-sm" href="/update?bookId=${book.bookId}">修 改</a>
		                            <a class="btn btn-danger btn-sm" href="/delete?bookId=${book.bookId}" onclick="return confirmd()">删 除</a>
		                        </td>
		                    </tr>
		                </c:forEach>
					</tbody>
				</table>
				<button class="btn btn-success" onclick="window.location.href='/add'">添加联系人</button>
				<button class="btn btn-info" onclick="window.location.href='/'">联系人列表</button>
			</div>
		</div>
		<script type="text/javascript">
			function confirmd() {
				var msg = "您真的确定要删除吗？";
				if (confirm(msg)==true){
					return true;
				}else{
					return false;
				}
			}
		</script>
</body>
</html>
