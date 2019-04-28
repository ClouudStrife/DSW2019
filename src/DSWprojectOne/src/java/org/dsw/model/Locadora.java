/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.dsw.model;

/**
 *
 * @author Guga Bot
 */
public class Locadora {
    
    private String nome;
    private String email;
    private String senha;
    private String cnpj;
    private String cidade;
    
    public Locadora(String nome, String email, String senha, String cnpj, String cidade){
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.cnpj = cnpj;
        this.cidade = cidade;
    }
    
    public Locadora(){
        this.nome = "";
        this.email = "";
        this.senha = "";
        this.cnpj = "";
        this.cidade = "";
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public void setCNPJ(String cnpj){
        this.cnpj = cnpj;
    }
    
    public String getCNPJ(){
        return this.cnpj;
    }
    
    public void setCidade(String cidade){
        this.cidade = cidade;
    }
    
    public String getCidade(){
        return this.cidade;
    }
    
    public void setSenha(String senha){
        this.senha = senha;
    }
    
    public String getSenha(){
        return this.senha;
    }
}

