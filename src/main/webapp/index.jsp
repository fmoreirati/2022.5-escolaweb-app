<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>
	<h2>Cadastro de Aluno</h2>
	<form class="container" action="AlunoServlet" method="GET">

		<div class="mb-3">
			<label for="exampleFormControlInputNome" class="form-label">Nome</label>
			<input type="text" class="form-control"
				id="exampleFormControlInputNome" placeholder="nome">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInputemail" class="form-label">E-mail
				address</label> <input type="email" class="form-control"
				id="exampleFormControlInputemail" placeholder="name@example.com">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInputsenha" class="form-label">Senha
				address</label> <input type="password" class="form-control"
				id="exampleFormControlInputsenha" placeholder="">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlInputData" class="form-label">Data
				Nasc.</label> <input type="date" class="form-control"
				id="exampleFormControlInputdata" placeholder="">
		</div>

		<div class="input-group">
			<button type="reset" class="btn btn-danger">Cancelar</button>
			<button class="btn btn-primary">Cadastrar</button>
		</div>
	</form>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
</html>