<%-- 
    Document   : index
    Created on : 11/11/2014, 09:06:11
    Author     : alunos
--%>

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
        <br>
            <div class="jumbotron" style="background:#080808">
                            <h1 style="color:whitesmoke">Polícia Fedeal</h1>
                            <p style="color:whitesmoke">Lutando em defesa do país</p>
            </div>
        <br>
        <div class="container">
            <div class="btn-group btn-group-justified" role="group" aria-label="...">
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
                <div class="btn-group" role="group">
                    <a href="foragidos-fichapolicial.jsp">
                    <button type="button" class="btn btn-default">
                <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-search" aria-hidden="true"></span>Procurados
                    </button>
                        </a>
                </div>
            </div>
        </div>
    </body>
</html>
