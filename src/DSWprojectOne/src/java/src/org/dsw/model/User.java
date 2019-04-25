/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.org.dsw.model;

/**
 *
 * @author Guga Bot
 */
public class User {
    private String email;
    private String senha;
    private boolean admin;
    
    public User(String email, String senha, boolean admin){
        this.email = email;
        this.senha = senha;
        this.admin = admin;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setSenha(String senha){
        this.senha = senha;
    }
    
    public void setAdmin(boolean admin){
        this.admin = admin;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public String getSenha(){
        return this.senha;
    }
    
    public boolean getAdmin(){
        return this.admin;
    }
    
}
