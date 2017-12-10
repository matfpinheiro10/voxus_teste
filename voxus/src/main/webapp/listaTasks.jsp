<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Tarefas Voxus</title>
</head>
<body>
	<div class="conteiner body">
		<div class="main_container">
			<jsp:include page="navbar.jsp" flush="false">
				<jsp:param value="navbar.jsp" name="navbar" />
			</jsp:include>
			<nav class="navbar navbar-light bg-light">
			<form class="form-inline">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">ID</span> <input
						type="text" class="form-control" placeholder="Task"
						aria-label="Task" aria-describedby="basic-addon1">
				</div>
			</form>
			</nav>
			<div style="padding: .5rem 1rem;">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#ID</th>
							<th scope="col">Titulo</th>
							<th scope="col">Editar</th>
							<th scope="col">Remover</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td><button type="button" class="btn btn-primary btn-sm">Editar
									Tarefa</button></td>
							<td><button type="button" class="btn btn-danger btn-sm">Remover</button></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td><button type="button" class="btn btn-primary btn-sm">Editar
									Tarefa</button></td>
							<td><button type="button" class="btn btn-danger btn-sm">Remover</button></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td><button type="button" class="btn btn-primary btn-sm">Editar
									Tarefa</button></td>
							<td><button type="button" class="btn btn-danger btn-sm">Remover</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>