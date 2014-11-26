<%-- 
    Document   : index
    Created on : 11/11/2014, 07:45:36
    Author     : alunos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mvc.Prisioneiro"%>
<%@page import="mvc.PrisioneiroDAO"%>
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
    <body>
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
                <div class="btn-group" role="group">
                    <a href="foragidos-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-search" aria-hidden="true"></span>Procurados
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading"><h1>Fichas</h1></div>
            <div class="panel-body"><p>Tabela contendo os arquivos polícias, toda
                    informação contida nele é de autoria da Polícia Federal Brasileira,
                    qualquer cópia indevida é crime federal passível de punições severas.</p></div>
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
                    ArrayList<Prisioneiro> prisioneiross = dao.getListaAlfabetica();
                    for (Prisioneiro prisioneiros : prisioneiross) {
                %>
                <tr>
                    <td>
                        <%= prisioneiros.getId()%>
                    </td>
                    <td>
                        <%= prisioneiros.getNome()%>
                    </td>
                    <td>
                        <%= prisioneiros.getCpf()%>
                    </td>
                    <td>
                        <%= prisioneiros.getResidencia()%>
                    </td>
                    <td>
                        <%= prisioneiros.getDelito()%>
                    </td>
                    <td>
                        <%= prisioneiros.getData()%>
                    </td>
                    <td>
                        <%= prisioneiros.getHora()%>
                    </td>
                    <td>
                        <%= prisioneiros.getLocal()%>
                    </td>
                    <td>
                        <%= prisioneiros.getEstado()%>
                    </td>
                    <td>
                        <img src="<%= prisioneiros.getImagem()%>" alt="meliantz" height="50" width="50">
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
        <div class="container">
            <h1>
                Remove Ficha
            </h1>
            <form action="mvc">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="text" style="display: none;" value="LogicaRemovePrisioneiro" name="logica" />
                    <h4>ID:</h4>
                    <input type="text" class="form-control" name="id"/>
                </div>
                <button type="submit">Remove</button> 
            </form>
        </div>
    </body>
</html>
