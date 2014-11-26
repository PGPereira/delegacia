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
        <title>Loucademia de Polícia</title>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Bootstrap/css/bootstrap-theme.min.css">
        <script src="Bootstrap/js/jquery-2.1.1.min.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1 class="text-center">Loucademia de Polícia</h1>
                <p class="text-center">Lutando em defesa do país.</p>
            </div>
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
                        </button>
                    </a>
                </div>
                <div class="btn-group" role="group">
                    <a href="altera-fichapolicial.jsp">
                        <button type="button" class="btn btn-default">
                            <span style="padding-left: 10px; float: left" class="glyphicon glyphicon-transfer" aria-hidden="true"></span>Altera
                        </button>
                    </a>
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
