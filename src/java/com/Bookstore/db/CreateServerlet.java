/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Bookstore.db;

import com.Bookstore.bean.ShoppingCartItemBean;
import com.Bookstore.bean.UserInfoBean;
import com.Bookstore.exception.ShoppingCartException;
import com.Bookstore.util.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D
 */
@WebServlet(name = "CreateServerlet", urlPatterns = {"/CreateServerlet","/login","/signout"})
public class CreateServerlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
                doPost(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String reqURL = request.getServletPath();
	HttpSession session = request.getSession();
        
        if(reqURL.equals("/CreateServerlet")) { 
         
                PrintWriter out=response.getWriter();
                
                UserInfoBean userInfoBean=new UserInfoBean();
                
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String name=fname+" "+lname; //concatination of first name and last name
                userInfoBean.setName(name);
                userInfoBean.setEmail(request.getParameter("email"));
                userInfoBean.setUsername(request.getParameter("username"));
                userInfoBean.setPassword(request.getParameter("password"));
                String rePassword=request.getParameter("repassword");

                String bd=request.getParameter("BirthDay");
                String bm=request.getParameter("BirthMonth");
                String by=request.getParameter("BirthYear");
                String bday=bd+"-"+bm+"-"+by;
                userInfoBean.setBday(bday);
                userInfoBean.setGender(request.getParameter("gender"));
                userInfoBean.setPhone(request.getParameter("phone"));

                int status=1;
                try {
                    status = RegisterUser.register(userInfoBean);
                } catch (ParseException ex) {
                    Logger.getLogger(CreateServerlet.class.getName()).log(Level.SEVERE, null, ex);
                }

                if(status>0){
                    //sending user to welcome page
                    //request.setAttribute("welcom","Welcome..!!");
                   // RequestDispatcher rd=request.getRequestDispatcher("memberlogin page");
                    //rd.include(request,response);
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }
                else{
                    out.print("Sorry..! registation failed");
                    //RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
                    //rd.include(request,respose);
                }
                out.close();
        }
        else if(reqURL.equals("/login")){
                String userName=request.getParameter("Username");
                String password=request.getParameter("Password");
		String selectQuery = "SELECT * FROM USER_DETAILS where username=\'"+userName+"\'";
                PreparedStatement ps = null;
                String dPassword = null;
		Connection conn = DbConnection.getConnection();
		
		try {
			ps = conn.prepareStatement(selectQuery);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				dPassword=rs.getString(4);	
			}
                        System.out.println(dPassword);
		} catch (SQLException e) {
			System.out.println(e.getMessage());		
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				
			}
		}
                if(password.equals(dPassword)){
                    //sending user to welcome page
                    //request.setAttribute("welcom","Welcome..!!");
                   // RequestDispatcher rd=request.getRequestDispatcher("memberlogin page");
                    //rd.include(request,response);
                                                                
                    session.setAttribute("userName",userName);
                    //request.setAttribute("successMessage", "Welcome "+userName+"  ");
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }
                else{
                    session.invalidate();
                    request.setAttribute("errorMessage", "Invalid userName or password");
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.include(request,response);
                }
	
        }
        else if(reqURL.equals("/signout")){
            session.invalidate();
            request.setAttribute("endSessionMessage", "Logout Successfully");
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.include(request,response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
