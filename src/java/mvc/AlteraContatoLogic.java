/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunos
 */
public class AlteraContatoLogic implements Logica {
    @Override
    public String executa(HttpServletRequest request,HttpServletResponse res)throws Exception {

        long id = Long.parseLong(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String residencia = request.getParameter("residencia");
        String delito = request.getParameter("delito");
        String data = request.getParameter("data");
        String hora = request.getParameter("hora");
        String local = request.getParameter("local");
        String estado = request.getParameter("estado");
    

        Contato contato = new Contato();
        contato.setNome(nome);
        contato.setCpf(cpf);
        contato.setResidencia(residencia);
        contato.setDelito(delito);
        contato.setData(data);
        contato.setHora(hora);
        contato.setLocal(local);
        contato.setEstado(estado);
        ContatoDao dao = new ContatoDao();
        dao.altera(id, contato);
        System.out.println("Adicionando contatum... ");
        
        //volta pa home
        return "index.jsp";
    }
}