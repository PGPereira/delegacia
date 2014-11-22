package mvc;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunos
 */
public class RemoveContatoLogic implements Logica {
    @Override
    public String executa(HttpServletRequest req,HttpServletResponse res)throws Exception {

        long id = Long.parseLong(req.getParameter("id"));
        ContatoDao dao = new ContatoDao();
        dao.removeContato(id);
        System.out.println("Excluindo contato... ");
        return "index.jsp";
    }
}