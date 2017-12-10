<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>


<%-- <c:if test="${pageContext.request.userPrincipal.name != null}">
	<form id="logoutForm" method="POST" action="${contextPath}/logout">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<div class="main_container">
		<div class="col-md-3 left_col menu_fixed">
			<div class="left_col scroll-view">

				<div class="navbar nav_title" style="border: 0;">
					<a href="${contextPath}/home" class="site_title"><img
						src="${contextPath}/resources/images/ic_logo-web.png" alt="..."
						width="40px" height="40px" align="center"> <span>
							S.I.G.A.</span></a>
				</div>

				<div class="clearfix"></div>

				<!-- menu profile quick info -->
				<div class="profile clearfix">
					<div class="profile_pic">
						<img src="${contextPath}/resources/images/userN.png" alt="..."
							class="img-circle profile_img">
					</div>
					<div class="profile_info">
						<span>Bem vindo,</span>
						<h2>${pageContext.request.userPrincipal.name}</h2>
					</div>
				</div>
				<!-- /menu profile quick info -->

				<br />

				<!-- sidebar menu -->
				<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
					<div class="menu_section">
						<h3>Menu</h3>
						<ul class="nav side-menu">
							<li><a href="${contextPath}/home"><i class="fa fa-home"></i>
									Home </a></li>
							<li><a><i class="fa fa-table"></i> Relatórios <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<sec:authorize
										access="hasAuthority('SUPERVISOR') or hasAuthority('ADMINISTRADOR')">
										<li><a href="${contextPath}/relatorioDesempenho">Produtividade</a></li>
									</sec:authorize>
								</ul></li>
							<li><a><i class="fa fa-desktop"></i> Administração <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<sec:authorize access="hasAuthority('ADMINISTRADOR')">
										<li><a href="${contextPath}/cadastroUsuarioCompleto">Criar
												Usuario</a></li>
									</sec:authorize>
									<sec:authorize
										access="hasAuthority('SUPERVISOR') or hasAuthority('ADMINISTRADOR')">
										<li><a href="${contextPath}/listaUsuarios">Lista de
												Usuarios</a></li>
									</sec:authorize>
									<sec:authorize access="hasAuthority('ADMINISTRADOR')">
										<li><a href="${contextPath}/uploadBalde">Importar
												Balde</a></li>
									</sec:authorize>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- /sidebar menu -->
			</div>
		</div>
		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu">
				<nav>
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img
								src="${contextPath}/resources/images/userN.png" alt="">${pageContext.request.userPrincipal.name}<span
								class=" fa fa-angle-down"></span>
						</a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
								<sec:authorize access="isAuthenticated()">
									<li><a onclick="document.forms['logoutForm'].submit()"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</sec:authorize>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->
</c:if> --%>