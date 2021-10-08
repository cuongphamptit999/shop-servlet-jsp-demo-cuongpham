<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header">
	<nav class="navbar navbar-expand-sm container">
		<!-- Brand -->
		<a class="navbar-brand" href="/ShopServletJspDemo/home"><img
			src="${pageContext.request.contextPath}/static/img/logo.png"
			alt="logo"></a>

		<ul class="navbar-nav">
			<div class="nav-left" style="display: flex;">
				<li class="nav-item"><a class="nav-link"
					href="/ShopServletJspDemo/admin/add-product">Thêm sản phẩm</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Sản phẩm </a>
					<div class="dropdown-menu">
						<c:forEach var="category_" items="${listCate }">
							<a class="dropdown-item" href="#">${category_.name }</a>
						</c:forEach>
					</div></li>
			</div>

			<div class="nav-right" style="display: flex;">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Tài khoản </a>
					<div class="dropdown-menu">
						<c:choose>
							<c:when test="${empty cookie.username.value }">
								<a class="dropdown-item" href="/ShopServletJspDemo/login">Login</a>
							</c:when>

							<c:when test="${not empty cookie.username.value }">
								<a class="dropdown-item" href="#">${cookie.username.value }</a>
								<a class="dropdown-item" href="/ShopServletJspDemo/logout">Logout</a>
							</c:when>
						</c:choose>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Giỏ hàng</a></li>
			</div>
		</ul>
	</nav>
</div>