<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>VOXUS</title>

<!-- Bootstrap -->
<link
	href="${contextPath}/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="${contextPath}/resources/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- jQuery custom content scroller -->
<link
	href="${contextPath}/resources/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
	rel="stylesheet" />

<!-- Custom Theme Style -->
<link href="${contextPath}/resources/build/css/custom.min.css"
	rel="stylesheet" />

<!-- iCheck -->
<link
	href="${contextPath}/resources/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- Datatables -->
<link
	href="${contextPath}/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${contextPath}/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${contextPath}/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${contextPath}/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${contextPath}/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="menu.jsp" flush="false">
				<jsp:param value="menu.jsp" name="menu" />
			</jsp:include>


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						
						<div class="x_content">
							<table id="datatable-buttons"
								class="table table-striped table-bordered" style="">
								<thead>
									<tr>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="listaUsuarios" items="${listaUsuariosTable}">
										<tr>
											<td>${listaUsuarios.nome}</td>
											<td><a href="${contextPath}/alteraUsuario/${listaUsuarios.id}">${listaUsuarios.username}</a></td>
											<td>${listaUsuarios.email}</td>
											<td>${listaUsuarios.latitude}</td>
											<td>${listaUsuarios.longitude}</td>
											<td>${listaUsuarios.telefone}</td>
											<td>${listaUsuarios.cargaHoraria}</td>
											<td>${listaUsuarios.tipoCredenciador}</td>
											<td>${listaUsuarios.perfil.name}</td>
											<td>${listaUsuarios.active}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
					</div>
				</div>
			</div>
			<!-- /page content -->
			<jsp:include page="footer.jsp" flush="false">
				<jsp:param value="footer.jsp" name="menu" />
			</jsp:include>
		</div>
	</div>

	<!-- jQuery -->
	<script
		src="${contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="${contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script
		src="${contextPath}/resources/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${contextPath}/resources/vendors/nprogress/nprogress.js"></script>
	<!-- jQuery custom content scroller -->
	<script
		src="${contextPath}/resources/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="${contextPath}/resources/build/js/custom.min.js"></script>

	<!-- iCheck -->
	<script src="${contextPath}/resources/vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script
		src="${contextPath}/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="${contextPath}/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
	<script src="${contextPath}/resources/vendors/jszip/dist/jszip.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
	<script
		src="${contextPath}/resources/vendors/pdfmake/build/vfs_fonts.js"></script>
</body>
</html>

