<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="destino.css">
    <title>Agencia | Cliente</title>
</head>
<body>

    <nav class="navbar navbar-expand-sm">
        <div class="container">
            <img src="imagens/logo.png" class="navbar-brand d-flex align-items-center">
             
               <button class= "navbar-toggler" type ="button"
                data-bs-toggle="collapse"
                data-bs-target="#menuNavbar">
                <span class="navbar-toggler-icon"></span>
               </button>

            <div class= "collapse navbar-collapse" id="menuNavbar">
                <div class= "navbar-nav">
            <a href="index.html" class="nav-link">Home</a>
            <a href="destino.html" class="nav-link">Nome</a>
            <a href="promocao.html" class="nav-link">Email</a>
            <a href="contato.html" class="nav-link">Senha</a>
                </div>
            </div>
        </div>
    </nav>
 
            <section class="container">

			<div class="p-4">
				<a href="./views/cliente/create.jsp"
					class="btn btn-primary mb-2 botao1"> Novo Cliente </a>
				<table class="table table-responsive table-hover">
					<thead>
						<tr>
							<th scope="col">id</th>
							<th scope="col">Nome</th>
							<th scope="col">Email</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaClientes}" var="c">
							<tr>
								<td>${c.id}</td>
								<td>${c.nome}</td>
								<td>${c.email}</td>
								<td>
									<div class="d-flex">
										<a href="usuario-edit?id=${u.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="usuario-delete?id=${u.id}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o autor ${c.nome}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>

        </div>