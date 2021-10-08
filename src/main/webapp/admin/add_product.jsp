<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Khai báo thư viện jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/home.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/all.js"></script>

<title>Document</title>
</head>

<body>
	<!-- HEADER -->
	<%@ include file="/views/includes/header.jsp"%>
	<!-- ------ -->

	<div id="main">
		<div class="container mt-5">
			<div class="contact-form">
				<form action="/ShopServletJspDemo/admin/add-product" method="POST"
					enctype="multipart/form-data">

					<div class="form-group">
						<label>Hãng sản xuất:</label> <select name="categoryId"
							class="form-control">
							<c:forEach var="category" items="${listCate }">
								<option value="${category.id }">${category.name }</option>
							</c:forEach>

						</select>
					</div>

					<div class="form-group">
						<label>Tên:</label> <input type="text" class="form-control"
							placeholder="Enter name" name="name">
					</div>

					<div class="form-group">
						<label>Giá:</label> <input type="text" class="form-control"
							placeholder="Enter price" name="price">
					</div>
					
					<div class="form-group">
						<label>Nội dung:</label> <input type="text" class="form-control"
							placeholder="Enter content" name="content">
					</div>

					<div class="form-group">
						<label class="required">Hình ảnh:&ensp;</label> <input type="file"
							name="file" />
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>

		</div>

	</div>

	<!-- HEADER -->
	<%@ include file="/views/includes/footer.jsp"%>
	<!-- ------ -->


</body>

</html>