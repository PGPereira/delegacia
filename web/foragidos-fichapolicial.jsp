<%-- 
    Document   : contato-adicionado
    Created on : 30/10/2014, 08:04:43
    Author     : alunos
--%>

<%@page import="mvc.Contato"%>
<%@page import="mvc.ContatoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style>
            h4 {color:whitesmoke}
        </style>
    </head>
    <body style="background:#000000">
        <div class="container">
		<header>
                    <div class="col-md-12">
                        <a href="index.jsp">
                            <img style="display: block; margin-left: auto; margin-right: auto" src="http://www.dpf.gov.br/logo.png" class="img-responsive" alt="ufmg"/>
                        </a>
                    </div>
                </header>
        </div>
        <hr>
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
        <hr>
        <div class="panel panel-default">
        <div class="panel-heading"><h1>Procurados pela polícia</h1></div>
        <div class="panel-body"><p>Tabela contendo os arquivos polícias, toda
                informação contida nele é de autoria da Polícia Federal Brasileira,
                qualquer cópia indevida é crime federal passível de punições severas.</p>
            <p>Os indivíduos apresentados nesta lista são de alta periculosidade, caso
                reconheça não se aproxime e ligue 190 imediatamente.</div>
        <table class="table">
        <tr>
                <td>
                    ID
                </td>
                <td>
                    NOME
                </td>
                <td>
                    CPF
                </td>
                <td>
                    RESIDENCIA
                </td>
                <td>
                    DELITO
                </td>
                <td>
                    DATA
                </td>
                <td>
                    HORA
                </td>
                <td>
                    LOCAL
                </td>
                <td>
                    ESTADO
                </td>
                <td>
                    IMAGEM
                </td>
            </tr>
            <%
                ContatoDao dao = new ContatoDao();
                ArrayList<Contato> contatos = dao.getListaForagidos();
                for (Contato contato : contatos) {
            %>
            <tr>
                <td>
                    <%= contato.getId()%>
                </td>
                <td>
                    <%= contato.getNome()%>
                </td>
                <td>
                    <%= contato.getCpf()%>
                </td>
                <td>
                    <%= contato.getResidencia()%>
                </td>
                <td>
                    <%= contato.getDelito()%>
                </td>
                <td>
                    <%= contato.getData()%>
                </td>
                <td>
                    <%= contato.getHora()%>
                </td>
                <td>
                    <%= contato.getLocal()%>
                </td>
                <td>
                    <%= contato.getEstado()%>
                </td>
                <td>
                    <img src="<%= contato.getImagem()%>" alt="meliantz" height="50" width="50">
                </td>
            </tr>
            <%
                }
            %>
        </table>
</html>
