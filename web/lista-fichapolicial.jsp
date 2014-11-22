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
    </head>
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
                ArrayList<Contato> contatos = dao.getListaDelito();
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
