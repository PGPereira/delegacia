<%-- 
    Document   : index
    Created on : 11/11/2014, 07:45:36
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
        <div class="jumbotron">
            <h1 class="text-center">
                Adição de nova ficha
            </h1>
        </div>
        <div class="container">
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
            <hr>
            <form action="mvc">
                <input type="text" style="display: none;" value="LogicaAdicionaContato" name="logica" />
                <h4>Nome:</h4> <input type="text" class="form-control btn-group-justified " name="nome"/>
                <h4>CPF:</h4> <input type="text" class="form-control" name="cpf"/>
                <h4>Residencia:</h4> <input type="text" class="form-control" name="residencia"/>
                <h4>Delito:</h4> <input type="text" class="form-control" name="delito"/>
                <h4>Data:</h4> <input type="text" class="form-control" name="data"/>
                <h4>Hora:</h4> <input type="text" class="form-control" name="hora"/>
                <h4>Local:</h4> <input type="text" class="form-control" name="local"/>
                <h4>Estado:</h4> <input type="text" class="form-control" name="estado"/>
                <h4>Imagem(link):</h4> <input type="text" class="form-control" name="imagem"/>
                <br/>
                <button type="submit" class="btn btn-default text-center">Cria</button>
            </form>
        </div>
    </body>
</html>
