/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.org.dsw.controller;

import src.org.dsw.dao.ClienteDAO;
import src.org.dsw.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guga Bot
 */
@WebServlet(urlPatterns = {"/insereCliente"})
public class ClienteController extends HttpServlet {

    private ClienteDAO clienteDAO;
    
    @Override
    public void init() {
        clienteDAO = new ClienteDAO();
    }
   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            insereCliente(request, response);
    }

     private void insereCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String cpf =  request.getParameter("cpf");
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String sexo = request.getParameter("sexo");
        String nasc = request.getParameter("nasc");
        

        Cliente cliente = new Cliente(email, senha, cpf, nome, telefone, sexo, nasc);
        clienteDAO.insert(cliente);
        response.sendRedirect("index.html");
    }
}
