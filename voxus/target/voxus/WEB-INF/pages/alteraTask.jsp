<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
							<form:form method="POST" modelAttribute="userForm"
								class="form-signin" id="userForm" name="userForm">
								<h2 class="form-signin-heading">Alteração de usuario</h2>
								<spring:bind path="username">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="username"
											class="form-control col-md-7 col-xs-12" placeholder="Usuário"
											autofocus="true" readonly="true"></form:input>
										<form:errors path="username"></form:errors>
									</div>
								</spring:bind>
								<br />
								<spring:bind path="nome">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="nome"
											class="form-control col-md-7 col-xs-12" placeholder="Nome"
											autofocus="true"></form:input>
										<form:errors path="nome"></form:errors>
									</div>
								</spring:bind>
								<br />
								<spring:bind path="email">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="email"
											class="form-control col-md-7 col-xs-12" placeholder="Email"
											autofocus="true"></form:input>
										<form:errors path="email"></form:errors>
									</div>
								</spring:bind>
								<br />
								<spring:bind path="password">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="password" path="password" id="password"
											name="password" class="form-control col-md-7 col-xs-12"
											placeholder="Senha"></form:input>
										<form:errors path="password"></form:errors>
										<label id="errorPassword" name="errorPassword" style="display:none;">
										A senha deve ter de 8 à 30 caracteres, deve conter ao menos uma letra maiuscula e um numero, e não pode haver repetição.</label>
									</div>
								</spring:bind>
								<br />
								<spring:bind path="passwordConfirm">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="password" path="passwordConfirm"
											class="form-control col-md-7 col-xs-12"
											placeholder="Confirme a senha"></form:input>
										<form:errors path="passwordConfirm"></form:errors>
									</div>
								</spring:bind>
								<br />
								<spring:bind path="active">
									<form:select path="active" class="form-control">
										<form:option value="-1" label="--- Status ---" />
										<form:option value="1">Ativo </form:option>
										<form:option value="0">Inativo </form:option>
									</form:select>
								</spring:bind>
								<spring:bind path="Perfil">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:select id="perfil" path="perfil" class="form-control"
											onchange="chargeHierarquia()">
											<form:option value="" itemLabel="--- Perfil ---"
												label="--- Perfil ---" />
											<form:options items="${perfils}" itemValue="id"
												itemLabel="name" />
										</form:select>
										<form:errors path="Perfil"></form:errors>
									</div>
								</spring:bind>
								<spring:bind path="User_id_hierarquia">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:select path="user_id_hierarquia" class="form-control"
											style="display:none">
											<form:option value="-1" label="--- Hierarquia ---" />
											<form:options items="${user_id_hierarquia}" itemValue="id"
												itemLabel="nome" />
										</form:select>
										<form:errors path="user_id_hierarquia"></form:errors>
									</div>
								</spring:bind>
								<spring:bind path="Latitude">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="latitude"
											class="form-control col-md-7 col-xs-12"
											placeholder="Latitude" autofocus="true"></form:input>
										<form:errors path="latitude"></form:errors>
									</div>
								</spring:bind>
								<spring:bind path="Longitude">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="longitude"
											class="form-control col-md-7 col-xs-12"
											placeholder="Longitude" autofocus="true"></form:input>
										<form:errors path="longitude"></form:errors>
									</div>
								</spring:bind>
								<spring:bind path="Telefone">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:input type="text" path="telefone"
											class="form-control col-md-7 col-xs-12"
											placeholder="telefone" autofocus="true"></form:input>
										<form:errors path="telefone"></form:errors>
									</div>
								</spring:bind>

								<spring:bind path="CargaHoraria">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:select path="cargaHoraria" class="form-control">
											<form:option value="-1" label="--- cargaHoraria ---" />
											<form:option value="4">4 </form:option>
											<form:option value="6">6 </form:option>
											<form:option value="8">8 </form:option>
											<form:option value="12">12 </form:option>
										</form:select>
										<form:errors path="cargaHoraria"></form:errors>
									</div>
								</spring:bind>
								<spring:bind path="TipoCredenciador">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:select path="tipoCredenciador" class="form-control">
											<form:option value="-1" label="--- Tipo Credenciador ---" />
											<form:option value="0">Interno </form:option>
											<form:option value="1">Externo </form:option>
										</form:select>
										<form:errors path="cargaHoraria"></form:errors>
									</div>
								</spring:bind>
								<br />
								<button class="btn btn-success" type="button" id="btnSubmit"
									name="btnSubmit"
									onclick="CheckPassword(document.userForm.password)">Salvar</button>
							</form:form>
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
<script>
	function chargeHierarquia() {
		var selectedValue = $("#perfil").val();
		if (selectedValue == 1) {
			document.getElementById('user_id_hierarquia').style.display = 'block';
		} else {
			document.getElementById('user_id_hierarquia').style.display = 'none';
		}
	}

	function CheckPassword(inputtxt) {
		var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%]{8,}$/;
			
		var str=inputtxt.value;
		//var hasDuplicates = (/([a-zA-Z]).*?\6/).test(str)   
		var hasDuplicates =  (/^([a-z])\1+$/).test(str) ;  

		if (inputtxt.value.match(passw) || inputtxt.value=='') {
			document.getElementById("errorPassword").style.display = 'none';
			//document.userForm.submit();
			var form = document.getElementById("userForm");
			form.submit();
		} else {
			document.getElementById("errorPassword").style.display = 'block';
			return false;
		}
	}
</script>