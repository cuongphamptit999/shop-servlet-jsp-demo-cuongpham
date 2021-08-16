<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Khai báo thư viện jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Khai báo thư viện để format -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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


	<!-- BANNER -->
	<div id="banner">
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/static/img/banner1.jpg"
						alt="Los Angeles">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/static/img/banner2.jpg"
						alt="Chicago">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/static/img/banner3.jpg"
						alt="New York">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>
	</div>

	<!-- MAIN -->
	<div id="main">
		<div class="container">
			<h3 class="tieu-de" style="margin-top: 20px; text-align: center;">SẢN
				PHẨM</h3>
			<div class="row">

				<c:forEach var="product" items="${listProduct }">

					<div class="col-md-3">
						<a href="/product_detail.html"><img
							src="${pageContext.request.contextPath}/upload/${product.nameImg}"
							alt="product"></a>
						<div class="infor" style="text-align: center;">
							<a href="/product_detail.html">
								<h5>${product.name}</h5>
							</a>
							<fmt:parseNumber var="priceFormat" integerOnly="true"
								type="number" value="${product.price}" />
							<p>${priceFormat }$</p>
							<a href="#" class="btn btn-success"><i
								class="fas fa-shopping-cart"></i>&nbsp;Mua ngay</a>
						</div>
					</div>

				</c:forEach>

			</div>
		</div>

	</div>

	<!-- HEADER -->
	<%@ include file="/views/includes/footer.jsp"%>
	<!-- ------ -->

</body>

</html>