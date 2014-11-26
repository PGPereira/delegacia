<%-- 
    Document   : prisioneiro-adicionado
    Created on : 30/10/2014, 08:04:43
    Author     : alunos
--%>

<%@page import="mvc.Prisioneiro"%>
<%@page import="mvc.PrisioneiroDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loucademia de Polícia</title>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Bootstrap/css/bootstrap-theme.min.css">
        <script src="Bootstrap/js/jquery-2.1.1.min.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body >
        <div class="container">
            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                <div class="btn-group" role="group">
                    <a href="index.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-home" aria-hidden="true"></span>Home
                        </button>
                    </a>
                </div>
                <div class="btn-group" role="group">
                    <a href="adiciona-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>Insere
                        </button>
                    </a>
                </div>
                <div class="btn-group" role="group">
                    <a href="remove-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-floppy-remove" aria-hidden="true"></span>Remove
                        </button></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="altera-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-transfer" aria-hidden="true"></span>Altera
                        </button></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="lista-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-list" aria-hidden="true"></span>Fichas
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading"><h1>Procurados pela polícia</h1></div>
            <div class="panel-body">
                <p>Tabela contendo os arquivos polícias, toda
                    informação contida nele é de autoria da Polícia Federal Brasileira,
                    qualquer cópia indevida é crime federal passível de punições severas.
                </p>
                <p>
                    Os indivíduos apresentados nesta lista são de alta periculosidade, caso
                    reconheça não se aproxime e ligue 190 imediatamente.
                </p>
            </div>
            <table class="table">
                <tr>
                    <th>
                        ID
                    </th>
                    <th>
                        NOME
                    </th>
                    <th>
                        CPF
                    </th>
                    <th>
                        RESIDENCIA
                    </th>
                    <th>
                        DELITO
                    </th>
                    <th>
                        DATA
                    </th>
                    <th>
                        HORA
                    </th>
                    <th>
                        LOCAL
                    </th>
                    <th>
                        ESTADO
                    </th>
                    <th>
                        IMAGEM
                    </th>
                </tr>
                <%
                    PrisioneiroDAO dao = new PrisioneiroDAO();
                    ArrayList<Prisioneiro> prisioneiros = dao.getListaForagidos();
                    for (Prisioneiro prisioneiro : prisioneiros) {
                %>
                <tr>
                    <td>
                        <%= prisioneiro.getId()%>
                    </td>
                    <td>
                        <%= prisioneiro.getNome()%>
                    </td>
                    <td>
                        <%= prisioneiro.getCpf()%>
                    </td>
                    <td>
                        <%= prisioneiro.getResidencia()%>
                    </td>
                    <td>
                        <%= prisioneiro.getDelito()%>
                    </td>
                    <td>
                        <%= prisioneiro.getData()%>
                    </td>
                    <td>
                        <%= prisioneiro.getHora()%>
                    </td>
                    <td>
                        <%= prisioneiro.getLocal()%>
                    </td>
                    <td>
                        <%= prisioneiro.getEstado()%>
                    </td>
                    <td>
                        <img src="<%= prisioneiro.getImagem()%>" alt="meliantz" height="50" width="50">
                    </td>
                </tr>
                <% }%>
            </table>
        </div>
    </body>
</html>
