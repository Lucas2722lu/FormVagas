<%@page import="vagas.vagasdao"  %>

<% 

System.out.println("EXCLUIR" +  request.getParameter("id"));

int id = Integer.parseInt(request.getParameter("id"));
vagasdao dao = new vagasdao();

dao.deletaVaga(id);
response.sendRedirect("index.jsp");


%>
ml>