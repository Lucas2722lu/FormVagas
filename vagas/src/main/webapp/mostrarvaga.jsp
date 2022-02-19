<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="vagas.vagas" %>
<%@ page import="vagas.vagasdao" %>
    
<%

vagas vaga = new vagas();
vaga.aberta=1;
vaga.beneficios=(request.getParameter("beneficios"));
vaga.descricao=(request.getParameter("descricao"));
vaga.local_trabalho=(request.getParameter("local_trabalho"));
vaga.req_desejaveis=(request.getParameter("req_desejaveis"));
vaga.req_obrigatorios=(request.getParameter("req_obrigatorios"));
vaga.remuneracao=(Float.parseFloat(request.getParameter("remuneracao")));



vagasdao dao = new vagasdao();
dao.CadastrarVaga(vaga);

%>    
    


<div class="container">

	
	
	<h5 style="color:green;">*Vaga cadastrada com sucesso</h5>	

	<p>Descrição: <%= vaga.descricao %> </p>
	<p>Requisitos Obrigatorios: <%= vaga.req_obrigatorios %> </p>
	<p>Requisitos Desejaveis: <%= vaga.req_desejaveis %> </p>
	<p>Remuneração:: <%= vaga.remuneracao %> </p>
	<p>Beneficios: <%= vaga.beneficios %> </p>
	<p>Local: <%= vaga.local_trabalho %> </p>
	
	<a href="index.jsp"><button class="btn btn-primary">Listar vagas</button></a>

</div>

</body>
</html>

