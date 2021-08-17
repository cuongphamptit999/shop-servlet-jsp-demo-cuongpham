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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/product_detail.css">

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

	<!-- MAIN -->
	<div id="main">
		<div class="container">
			<div class="item-detail">
				<div class="row">
					<div class="col-md-5">
						<img src="${pageContext.request.contextPath}/upload/${product.nameImg}" alt="product">
						<div class="list-img">
							<img src="${pageContext.request.contextPath}/upload/${product.nameImg}" alt="product"
								onclick="selectImg('${product.nameImg}')">
						</div>
					</div>
					<div class="col-md-7">
						<h3>${product.name}</h3>
						<h5>Thông tin sản phẩm</h5>
						<p>Túi xách là một phụ kiện thời trang không thể thiếu của các
							bạn trẻ dù là nam hay nữ, nó thể hiện phong cách cũng như cá tính
							của chủ nhân. Nếu bạn yêu thích phong cách đơn giản nhưng tinh tế
							thì chiếc túi xách là một lựa chọn hoàn hảo cho bạn.Chiếc túi
							xách Tote 6 sở hữu thiết kế thời trang với phần nắp túi cách điệu
							kết hợp tông màu nổi bật, những đường may tinh tế, cùng gam màu
							trung tính trẻ trung năng động sẽ vô cùng hữu dụng cho bạn trong
							việc chứa các vật dụng cá nhân. Bên cạnh đó, túi xách còn thể
							hiện gu thời trang và cá tính của bạn.</p>
						Giá:&emsp;
						<h2 style="display: inline-block;">${product.price} $</h2>
						<div class="btn-buy">
							<button type="button" class="btn btn-warning"
								style="width: 100%; margin-bottom: 10px;">Cho vào giỏ</button>
							<button type="button" class="btn btn-danger" style="width: 100%;">Mua
								ngay</button>
						</div>
					</div>
				</div>
			</div>

			<div class="video mt-5">
				<iframe width="100%" height="600px"
					src="https://www.youtube.com/embed/y95WYF78Q7k"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="comment-face mt-5">
				<div class="fb-comments" data-href="https://developers.facebook.com"
					data-width="100%" data-numposts="5"></div>

			</div>

		</div>

	</div>



	<!-- HEADER -->
	<%@ include file="/views/includes/footer.jsp"%>
	<!-- ------ -->

</body>

</html>