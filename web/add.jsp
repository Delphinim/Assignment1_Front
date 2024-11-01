<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<head>
		<meta charset="utf-8">
		<title>联系人管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	</head>

	<body style="padding-top: 20px;">
		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<h1>添加联系人</h1><br>
				<form action="add" method="post">
					<div class="form-group">
						<label>联系人姓名</label>
						<input type="text" class="form-control" name="bookName">
					</div>
					<div class="form-group">
						<label class="radio-inline">
							<input type="radio" name="bookSex" value="1" checked="checked"> 男
						</label>
						<label class="radio-inline">
							<input type="radio" name="bookSex" value="0"> 女
						</label>
					</div>
					<div class="form-group">
						<label>地址</label>
						<input type="text" class="form-control" name="bookAdd">
					</div>
					<div class="form-group">
						<label>电话</label>
						<input type="text" class="form-control" name="bookTel">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-info" >确认添加</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
