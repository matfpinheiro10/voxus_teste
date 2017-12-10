<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>S.I.G.A</title>

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
						<div class="title_left">
							<h3>S.I.G.A</h3>
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
</body>
</html>