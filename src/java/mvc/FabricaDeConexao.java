package mvc;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author alunos
 */
public class FabricaDeConexao {

    public Connection getConnection() throws SQLException {
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            return DriverManager.getConnection("jdbc:mysql://150.164.102.160/daw-aluno6", "daw-aluno6", "daw06");
            //return DriverManager.getConnection("jdbc:mysql://localhost/escola","root","");
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
}
