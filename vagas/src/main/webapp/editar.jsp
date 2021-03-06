<%@ page import="vagas.vagas" %>

<%@page import="vagas.vagasdao"  %>

<% 

System.out.println("EDITAR" +  request.getParameter("id"));

int id = Integer.parseInt(request.getParameter("id"));
vagasdao dao = new vagasdao();

vagas vaga = dao.getVaga(id);

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
    
  </header>
 
    <p></p>
      <button type="button" class="btn btn-primary">Ver Op??es</button>
    <p></p>
    <form action="realizaredicao.jsp" method="post">
    <div class="row">
      <div class="col-5">
        <label for="id_vagas" class="form-label">Id Vaga</label>
        <input value="<%=vaga.id_vagas %>"  name="id_vagas" type="hidden" class="form-control" id="id_vagas" >
        <input value="<%=vaga.id_vagas %>"   class="form-control" disabled >
        <div id="id_vagaHelp" class="form-text"></div>
      </div>
    </div>
      
    <div class="row">
        <div class="col-5">
          <div></div>
            <label for="descricao_do_cargo" class="form-label" >Descri??o do Cargo</label>
            <textarea name="descricao" class="form-control" id="descricao_do_cargo" style="height: 100px "><%=vaga.descricao %></textarea>
          </div>
        </div>
    </div>
 
    <div class="row">
      <div class="col-5">
        <div></div>
          <label for="requisitos_obrigatorios" class="form-label" >Requisitos Obrigat?rios</label>
          <textarea name="req_obrigatorios" class="form-control" id="requisitos_obrigatorios" style="height: 100px"></textarea>
        </div>
      </div>
  </div>
  
  <div class="row">
      <div class="col-5">
        <div></div>
          <label for="requisitos_desejaveis" class="form-label" >Requisitos Desej?veis</label>
          <textarea name="req_desejaveis" class="form-control" id="requisitos_desejaveis" style="height: 100px"></textarea>
        </div>
      </div>
  </div>
     
  <div class="row">
    <div class="col-5">
      <label for="remuneracao_mensal" class="form-label">Remunera??o Mensal</label>
      <input name="remuneracao" type="textarea" class="form-control" id="remuneracao_mensal" >
      <div id="remuneracao_mensalHelp" class="form-text"></div>
    </div>
  </div>
  
  <div class="row">
    <div class="col-5">
      <div></div>
        <label for="beneficios" class="form-label" >Benef?cios</label>
        <textarea name="beneficios" class="form-control" id="beneficios" style="height: 100px "></textarea>
      </div>
    </div>
</div>
   
  
  <div class="row">
    <div class="col-5">
      <label for="local_de_trabalho" class="form-label">Local de trabalho</label>
      <input name="local_trabalho" type="textarea" class="form-control" id="local_de_trabalho" >
      <div id="local_de_trabalhoHelp" class="form-text"></div>
    </div>
  </div>
    <p></p>
      <button type="submit" class="btn btn-primary">Cadastrar</button>
    <p></p>
 </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
 
</html>
