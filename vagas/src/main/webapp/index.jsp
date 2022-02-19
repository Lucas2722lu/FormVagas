<%@page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="vagas.vagas" %>
<%@ page import="vagas.vagasdao" %>
<%@ page import="java.util.*" %>

<%

List<vagas> vagas  = new ArrayList<vagas>();
vagasdao dao = new vagasdao();

vagas = dao.Listavagas();

%>	



<!DOCTYPE html>
<html lang="pt-br">
    
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   
 
</head>
<body class="container">
 
  <header>
 
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Mural de Vagas</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
            <a class="nav-link" href="cadastro.html">Cadastro</a>
            <a class="nav-link" href="edicao.html">Edição</a>
          </div>
        </div>
      </div>
    </nav>
 
    <p></p>
    <h1>Vagas Disponíveis</h1>
    <p></p>
    <a href="cadastro.html">
    <button type="button" class="btn btn-primary">Nova Vaga</button> </a>
    <p></p>
 
    <table class="table">
        <thead>
          <tr>
            <th scope="col">Id Vaga</th>
            <th scope="col">Descrição do Cargo</th>
            <th scope="col">Requisitos Obrigatórios</th>
            <th scope="col">Requisitos Desejáveis</th>
            <th scope="col">Remuneração Mensal</th>
            <th scope="col">Benefícios</th>
            <th scope="col">Local de trabalho</th>
            <th scope="col">Ações</th>
          </tr>
        </thead>
        <tbody>
        <% for(int cont =0; cont < vagas.size();cont++){  %>
			  
				    <tr>
				        <td><%= vagas.get(cont).id_vagas %> </td>
						<td><%= vagas.get(cont).descricao %> </td>
						<td><%= vagas.get(cont).req_obrigatorios %> </td>
						<td><%= vagas.get(cont).req_desejaveis %> </td>
						<td><%= vagas.get(cont).remuneracao %> </td>
						<td><%= vagas.get(cont).beneficios %> </td>
						<td><%= vagas.get(cont).local_trabalho %> </td>
						<td>
					
							<a href="editar.jsp?id=<%=vagas.get(cont).id_vagas %>">
							<button type="button" class="btn btn-warning btn-sm">Editar</button>
						</a> 
						
						<a href="excluir.jsp?id=<%=vagas.get(cont).id_vagas %>">
						<button type="button" class="btn btn-danger btn-sm">Excluir</button>
						</a>
						 </td>
				    </tr>
			    
			    <% } %>

        
        
         
        </tbody>
      </table>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
 
</html>
