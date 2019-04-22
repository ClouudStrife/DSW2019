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
public class Locacao {
    private String cpfCliente;
    private String cnpjLocadora;
    private String dateHour;
    
    public Locacao(String cpfCliente, String cnpjLocadora, String dateHour){
        this.cpfCliente = cpfCliente;
        this.cnpjLocadora = cnpjLocadora;
        this.dateHour = dateHour;
    }
    
    public String getCpfCliente(){
        return this.cpfCliente;
    }
    
    public void setCpfCliente(String cpfCliente){
        this.cpfCliente = cpfCliente;
    }
    
    public String getCnpjLocadora(){
        return this.cnpjLocadora;
    }
    
    public void setCnpjLocadora(String cnpjLocadora){
        this.cnpjLocadora = cnpjLocadora;
    }
    
    public String getDateHour(){
        return this.dateHour;
    }
    
    public void setDateHour(String dateHour){
        this.dateHour = dateHour;
    }
}
