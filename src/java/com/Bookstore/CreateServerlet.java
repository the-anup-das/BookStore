/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Bookstore;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KM
 */
@WebServlet(name = "CreateServerlet", urlPatterns = {"/CreateServerlet"})
public class CreateServerlet extends HttpServlet {
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String name=fname+" "+lname; //concatination of first name and last name
        String mail=request.getParameter("email");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String rePassword=request.getParameter("repassword");
        
        String bm=request.getParameter("BirthMonth");
        String bd=request.getParameter("BirthDay");
        String by=request.getParameter("BirthYear");
        
        String gender=request.getParameter("gender");
        String ph=request.getParameter("phone");
        
        int status=1;
        try {
            status = RegisterUser.register(name,mail,username,
                    password,rePassword,bm,bd,by,gender,ph);
        } catch (ParseException ex) {
            Logger.getLogger(CreateServerlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        if(status>0){
            //sending user to welcome page
            request.setAttribute("welcom","Welcome..!!");
           // RequestDispatcher rd=request.getRequestDispatcher("memberlogin page");
            //rd.include(request,response);
        }
        else{
            out.print("Sorry..! registation failed");
            //RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
            //rd.include(request,respose);
        }
        out.close();
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
