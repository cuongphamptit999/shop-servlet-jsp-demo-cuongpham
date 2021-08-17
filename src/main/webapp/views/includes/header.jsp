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
						<a class="dropdown-item" href="#">Hãng A</a> <a
							class="dropdown-item" href="#">Hãng B</a> <a
							class="dropdown-item" href="#">Hãng C</a>
					</div></li>
			</div>

			<div class="nav-right" style="display: flex;">
				<form class="form-inline" action="#">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search">
					<button class="btn btn-success" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Tài khoản </a>
					<div class="dropdown-menu">
						<c:choose>
							<c:when test="${empty username }">
								<a class="dropdown-item" href="/ShopServletJspDemo/login">Login</a>
							</c:when>
							
							<c:when test="${not empty username }">
								<a class="dropdown-item" href="#">${username }</a>
								<a class="dropdown-item" href="/ShopServletJspDemo/logout">Logout</a>
							</c:when>
						</c:choose>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Giỏ hàng</a>
				</li>
			</div>
		</ul>
	</nav>
</div>