package mvc;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


//import MySQL.Trabalho;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alunos
 */
public class PrisioneiroDAO {
    
    private Connection connection;
    public PrisioneiroDAO(){
        try {
            this.connection = new FabricaDeConexao().getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(PrisioneiroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void adiciona(Prisioneiro contato){
        String sql = "insert into fichapolicial"+"(nome,cpf,residencia,delito,data,hora,local,estado,imagem)"+"values(?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement stmt = connection.prepareStatement(sql);
            //seta os valores
            stmt.setString(1,contato.getNome());
            stmt.setString(2,contato.getCpf());
            stmt.setString(3,contato.getResidencia());
            stmt.setString(4,contato.getDelito());
            stmt.setString(5,contato.getData());
            stmt.setString(6,contato.getHora());
            stmt.setString(7,contato.getLocal());
            stmt.setString(8,contato.getEstado());
            stmt.setString(9,contato.getImagem());

            //executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public void altera(long ID, Prisioneiro contato){
        String sql = "update fichapolicial set nome=?,cpf=?,residencia=?,delito=?,data=?,hora=?,local=?,estado=?,imagem=? WHERE id=?";
        try{
            PreparedStatement stmt = connection.prepareStatement(sql);
            //seta os valores
            stmt.setString(1,contato.getNome());
            stmt.setString(2,contato.getCpf());
            stmt.setString(3,contato.getResidencia());
            stmt.setString(4,contato.getDelito());
            stmt.setString(5,contato.getData());
            stmt.setString(6,contato.getHora());
            stmt.setString(7,contato.getLocal());
            stmt.setString(8,contato.getEstado());
            stmt.setString(9,contato.getImagem());
            stmt.setLong(10,ID);

            //executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public void removeContato(long ID) throws SQLException{
      String sql = "DELETE FROM fichapolicial WHERE id=(?)";
      PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setLong(1, ID);
      stmt.execute();
      stmt.close();
    }

    public ArrayList getLista() throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from fichapolicial");
        ResultSet rs = stmt.executeQuery();
        ArrayList <Prisioneiro> contatos = new ArrayList <Prisioneiro>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setCpf(rs.getString("cpf"));
            contato.setResidencia(rs.getString("residencia"));
            contato.setDelito(rs.getString("delito"));
            contato.setData(rs.getString("data"));
            //montando a data através do Calendar
            contato.setHora(rs.getString("hora"));
            contato.setLocal(rs.getString("local"));
            contato.setEstado(rs.getString("estado"));
            contato.setImagem(rs.getString("imagem"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    public ArrayList getListaAlfabetica() throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from fichapolicial order by nome");
        ResultSet rs = stmt.executeQuery();
        ArrayList <Prisioneiro> contatos = new ArrayList <Prisioneiro>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setCpf(rs.getString("cpf"));
            contato.setResidencia(rs.getString("residencia"));
            contato.setDelito(rs.getString("delito"));
            contato.setData(rs.getString("data"));
            //montando a data através do Calendar
            contato.setHora(rs.getString("hora"));
            contato.setLocal(rs.getString("local"));
            contato.setEstado(rs.getString("estado"));
            contato.setImagem(rs.getString("imagem"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    public ArrayList getListaDelito() throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from fichapolicial order by delito, nome");
        ResultSet rs = stmt.executeQuery();
        ArrayList <Prisioneiro> contatos = new ArrayList <Prisioneiro>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setCpf(rs.getString("cpf"));
            contato.setResidencia(rs.getString("residencia"));
            contato.setDelito(rs.getString("delito"));
            contato.setData(rs.getString("data"));
            //montando a data através do Calendar
            contato.setHora(rs.getString("hora"));
            contato.setLocal(rs.getString("local"));
            contato.setEstado(rs.getString("estado"));
            contato.setImagem(rs.getString("imagem"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    public ArrayList getListaForagidos() throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from fichapolicial where estado='foragido'");
        ResultSet rs = stmt.executeQuery();
        ArrayList <Prisioneiro> contatos = new ArrayList <Prisioneiro>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setCpf(rs.getString("cpf"));
            contato.setResidencia(rs.getString("residencia"));
            contato.setDelito(rs.getString("delito"));
            contato.setData(rs.getString("data"));
            //montando a data através do Calendar
            contato.setHora(rs.getString("hora"));
            contato.setLocal(rs.getString("local"));
            contato.setEstado(rs.getString("estado"));
            contato.setImagem(rs.getString("imagem"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    /*public ArrayList localizaContatoPrimeiroNome(String nome) throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from contatos where nome=?");
        stmt.setString(1,nome);
        ResultSet rs = stmt.executeQuery();
        ArrayList <Contato> contatos = new ArrayList <Contato>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setEmail(rs.getString("email"));
            contato.setEndereco(rs.getString("endereco"));
            contato.setLastNome(rs.getString("lastNome"));
            //montando a data através do Calendar
            contato.setDataNascimento(rs.getDate("dataNascimento"));
            contato.setLocalDeTrabalho(rs.getLong("localDeTrabalho"));
            contato.setCargo(rs.getString("cargo"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    public ArrayList localizaContatoUltimoNome(String nome) throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from contatos where lastNome=?");
        stmt.setString(1,nome);
        ResultSet rs = stmt.executeQuery();
        ArrayList <Contato> contatos = new ArrayList <Contato>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setEmail(rs.getString("email"));
            contato.setEndereco(rs.getString("endereco"));
            contato.setLastNome(rs.getString("lastNome"));
            //montando a data através do Calendar
            contato.setDataNascimento(rs.getDate("dataNascimento"));
            contato.setLocalDeTrabalho(rs.getLong("localDeTrabalho"));
            contato.setCargo(rs.getString("cargo"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    public ArrayList buscaPorEmpresa(long local) throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("select * from contatos where localdetrabalho=?");
        stmt.setLong(1, local);
        ResultSet rs = stmt.executeQuery();
        ArrayList <Contato> contatos = new ArrayList <Contato>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Prisioneiro contato = new Prisioneiro();
            contato.setId(rs.getLong("id"));
            contato.setNome(rs.getString("nome"));
            contato.setEmail(rs.getString("email"));
            contato.setEndereco(rs.getString("endereco"));
            contato.setLastNome(rs.getString("lastNome"));
            //montando a data através do Calendar
            contato.setDataNascimento(rs.getDate("dataNascimento"));
            contato.setLocalDeTrabalho(rs.getLong("localDeTrabalho"));
            contato.setCargo(rs.getString("cargo"));
            //adicionando o objeto à lista
            contatos.add(contato);
        }
        
        rs.close();
        stmt.close();

        return contatos;
    }
    
    /*public ArrayList listaEmpresas() throws SQLException{
        PreparedStatement stmt = this.connection.prepareStatement("SELECT LocalDeTrabalho.nome,contatos.cargo FROM `LocalDeTrabalho` inner join `contatos` on contatos.localdetrabalho=LocalDeTrabalho.id");
        ResultSet rs = stmt.executeQuery();
        ArrayList <Trabalho> listaTrabalhos = new ArrayList <>();
        
        while(rs.next()) {
            //criando o objeto Prisioneiro
            Trabalho trabalho = new Trabalho();
            trabalho.setNome(rs.getString("nome"));
            trabalho.setCargo(rs.getString("cargo"));
            listaTrabalhos.add(trabalho);
        }
        
        rs.close();
        stmt.close();

        return listaTrabalhos;
    }*/
}