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
				<%
				if (request.getAttribute("status") != null
						&& request.getAttribute("status").toString().equalsIgnoreCase("Bạn đăng nhập thất bại")) {
				%>
				<div class="alert alert-danger">
					<strong>Danger!</strong> ${status }
				</div>
				<%
				}
				%>

				<form action="/ShopServletJspDemo/login" method="POST">

					<div class="form-group">
						<label>Username:</label> <input type="text" class="form-control"
							placeholder="Enter username" name="username">
					</div>

					<div class="form-group">
						<label>Password:</label> <input type="password"
							class="form-control" placeholder="Enter password" name="password">
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