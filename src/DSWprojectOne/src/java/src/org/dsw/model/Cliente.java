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
public class Cliente {
    private String email;
    private String senha;
    private String cpf;
    private String nome;
    private String telefone;
    private String sexo;
    private String nasc;
   
    public Cliente(String email, String senha, String cpf, String nome, String telefone, String sexo, String nasc){
        this.email = email;
        this.senha = senha;
        this.cpf  = cpf;
        this.nome = nome;
        this.telefone = telefone;
        this.sexo = sexo;
        this.nasc = nasc;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public void seSenha(String senha){
        this.senha = senha;
    }
    
    public String getSenha(){
        return this.senha;
    }
    
    public void setCPF(String cpf){
        this.cpf = cpf;
    }
    
    public String getCPF(){
        return this.cpf;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public void setTelefone(String telefone){
        this.telefone = telefone;
    }
    
    public String getTelefone(){
        return this.telefone;
    }
    
    public void setSexo(String sexo){
        this.sexo = sexo;
    }
    
    public String getSexo(){
        return this.sexo;
    }
    
    public void setNasc(String nasc){
        this.nasc = nasc;
    }
    
    public String getNasc(){
        return this.nasc;
    }
    
}
