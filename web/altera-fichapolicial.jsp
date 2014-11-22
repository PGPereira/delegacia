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
        <title>Ficha</title>
    </head>
    <body>
        <h1>Delegacia da Pesada</h1>
        <form action="mvc">
            <h2>Altera Ficha Policial</h2>
            <input type="text" style="display: none;" value="AlteraContatoLogic" name="logica" />
            ID: <input type="text" name="id"/><br><br>
            Nome: <input type="text" name="nome"/><br><br>
            CPF: <input type="text" name="cpf"/><br><br>
            Residencia: <input type="text" name="residencia"/><br><br>
            Delito: <input type="text" name="delito"/><br><br>
            Data: <input type="text" name="data"/><br><br>
            Hora: <input type="text" name="hora"/><br><br>
            Local: <input type="text" name="local"/><br><br>
            Estado: <input type="text" name="estado"/><br><br>
            Link Imagem: <input type="text" name="imagem"/><br><br>
            <input type="submit"></input> 
        </form>
    </body>
</html>
