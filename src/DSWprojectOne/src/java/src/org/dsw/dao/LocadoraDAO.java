/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.org.dsw.dao;

import src.org.dsw.model.Locadora;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Guga Bot
 */
public class LocadoraDAO {

    public LocadoraDAO() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:derby://localhost:1527/SLB_DB", "root", "root");
    }

    public void insert(Locadora locadora) {

        String sql = "INSERT INTO locadoras (email, senha, cnpj, nome, cidade) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);;

            statement = conn.prepareStatement(sql);
            statement.setString(1, locadora.getEmail());
            statement.setString(2, locadora.getSenha());
            statement.setString(3, locadora.getCNPJ());
            statement.setString(4, locadora.getNome());
            statement.setString(5, locadora.getCidade());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Locadora get(String cnpj) {
        Locadora locadora = null;
        String sql = "SELECT * FROM locadoras WHERE cnpj = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);;

            statement.setString(1,cnpj);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                String email = resultSet.getString("email");
                String CNPJ = resultSet.getString("CNPJ");
                String senha = resultSet.getString("senha");
                String nome = resultSet.getString("nome");
                String cidade = resultSet.getString("cidade");

                locadora = new Locadora(nome, email, senha, CNPJ, cidade);
            }
            
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return locadora;
    }
    
   public List<Locadora> listarLocadoraPorCidade(String cidade) throws SQLException {

        List<Locadora> ret = new ArrayList<>();
        String sql = "SELECT * FROM locadoras WHERE cidade = ?";

        try (Connection con = this.getConnection()) {
            PreparedStatement statement = con.prepareStatement(sql);
            
            statement.setString(1, cidade);
            
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                
                String email = resultSet.getString("email");
                String senha = resultSet.getString("senha");
                String cnpj = resultSet.getString("cnpj");
                String nome = resultSet.getString("nome");
                
                Locadora locadora = new Locadora(email, senha, cnpj, nome, cidade);
                ret.add(locadora);
            }
        }
        
        return ret;
    }
    
    

    public List<Locadora> getAll() {

        List<Locadora> listaLocadora = new ArrayList<>();

        String sql = "SELECT * FROM locadoras";

        try {
            Connection conn = this.getConnection();
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String email = resultSet.getString("email");
                String CNPJ = resultSet.getString("CNPJ");
                String senha = resultSet.getString("senha");
                String nome = resultSet.getString("nome");
                String cidade = resultSet.getString("cidade");

                Locadora locadora = new Locadora(nome, email, senha, CNPJ, cidade);
                listaLocadora.add(locadora);
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaLocadora;
    }
}
