<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="vagas.vagas" %>
<%@ page import="vagas.vagasdao" %>
    
<%

vagas vaga = new vagas();

vaga.aberta=1;
vaga.id_vagas=(Integer.parseInt(request.getParameter("id_vagas")));
vaga.beneficios=(request.getParameter("beneficios"));
vaga.descricao=(request.getParameter("descricao"));
vaga.local_trabalho=(request.getParameter("local_trabalho"));
vaga.req_desejaveis=(request.getParameter("req_desejaveis"));
vaga.req_obrigatorios=(request.getParameter("req_obrigatorios"));
vaga.remuneracao=(Float.parseFloat(request.getParameter("remuneracao")));

vagasdao dao = new vagasdao();
dao.editarVaga(vaga);

response.sendRedirect("index.jsp");

%>    
