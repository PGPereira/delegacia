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
public class LogicaRemoveContato implements Logica {
    @Override
    public String executa(HttpServletRequest req,HttpServletResponse res)throws Exception {

        long id = Long.parseLong(req.getParameter("id"));
        PrisioneiroDAO dao = new PrisioneiroDAO();
        dao.removeContato(id);
        System.out.println("Excluindo contato... ");
        return "remove-fichapolicial.jsp";
    }
}