<%-- 
    Document   : index
    Created on : 11/11/2014, 07:45:36
    Author     : alunos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mvc.Contato"%>
<%@page import="mvc.ContatoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ficha</title>
    </head>
    <body>
        <h1>Delegacia da Pesada</h1>
        <table>
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
                ArrayList<Contato> contatos = dao.getListaAlfabetica();
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
        <form action="mvc">
            <h2>Remove Ficha Policial</h2>
            <input type="text" style="display: none;" value="RemoveContatoLogic" name="logica" />
            ID: <input type="text" name="id"/><br><br>
            <input type="submit"></input> 
        </form>
    </body>
</html>
