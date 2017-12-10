<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar uma Tarefa</title>
</head>
<body>
	<div class="conteiner body">
		<div class="main_container">
			<jsp:include page="navbar.jsp" flush="false">
				<jsp:param value="navbar.jsp" name="navbar" />
			</jsp:include>

			<!-- page content -->
			<form:form method="POST" action="/voxus/createTask" modelAttribute="task" id="task" name="task">

				<!-- title field -->
				<spring:bind path="title">
					<div class="form-group">
						<form:input path="title" type="text" class="form-control"
							id="title" placeholder="Tarefa 01" />
					</div>
				</spring:bind>

				<!-- priority field -->
				<spring:bind path="priority">
					<div class="form-group">
						<form:select path="priority" class="form-control" id="priority">
							<form:option value="-1">Selecione</form:option>
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
							<form:option value="5">5</form:option>
						</form:select>
					</div>
				</spring:bind>


				<!-- user field -->
				<spring:bind path="User">
					<div class="form-group">
						<form:select path="User" class="form-control" id="usuario">
							<form:option value="" itemLabel="Selecione" label="Selecione" />
							<form:options items="${users}" itemValue="id"
								itemLabel="username" />
						</form:select>
					</div>
				</spring:bind>


				<!-- description field -->
				<spring:bind path="description">
					<div class="form-group">
						<form:textarea path="description" class="form-control"
							id="descricao" rows="3"
							placeholder="Escreva aqui o objetivo da task..."></form:textarea>
					</div>
				</spring:bind>
				<br />

				<input type="submit" value="Submit"/>
				<button class="btn btn-success" type="button" id="btnSubmit"
					name="btnSubmit">Salvar</button>

			</form:form>
		</div>
	</div>
</body>
</html>