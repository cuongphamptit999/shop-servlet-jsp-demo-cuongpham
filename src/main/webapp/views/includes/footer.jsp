<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<h4>THỜI TRANG TÚI XÁCH</h4>
			</div>
			<div class="col-md-3">
				<h4>SẢN PHẨM</h4>
				<ul>
				<c:forEach var="category_" items="${listCate }">
					<a href="#">
						<li>${category_.name }</li>
					</a>
				</c:forEach>
				</ul>
			</div>

			<div class="col-md-4">
				<h4>LIÊN HỆ</h4>
				<ul>
					<a href="#">
						<li><i class="fas fa-envelope"></i>&emsp;phamcuongth2000@gmail.com</li>
					</a>
					<a href="#">
						<li><i class="fas fa-phone"></i>&emsp;214141414</li>
					</a>
					<a href="#">
						<li><i class="fas fa-map-marker-alt"></i>&emsp;19A Xa La Hà
							Nội</li>
					</a>
				</ul>
			</div>

			<hr>
			<div class="footer-copyright text-center py-3" style="width: 100%;">
				©
				<script>
					var now = new Date();
					document.write(now.getFullYear());
				</script>
				Copyright: <a href="https://www.facebook.com/cuongphamptit999/">
					CuongPham.com</a>
			</div>
		</div>
	</div>
</div>
