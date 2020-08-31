/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Bookstore.bookchoice;

import com.Bookstore.bean.BookDetailsBean;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(name="Show Book Details", urlPatterns={"/showBookDetails"})
public class showBookDetails extends HttpServlet{
    private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException {
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
        
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String reqURL = request.getServletPath();
            HttpSession session = request.getSession();
            
            if(reqURL.equals("/showBookDetails")) {
                
                if(request.getParameter("HeadFirstJavaBook")!=null){
                    try {
				//ArrayList<BookDetailsBean> bookDetailsList = service.viewAllCartDetails();
                                ArrayList<BookDetailsBean> bookDetailsList = new ArrayList<BookDetailsBean>();
                                    BookDetailsBean bookDetailsdata=new BookDetailsBean("Head First Java","Bert Bates and Kathy Sierra","great book",500,"images\\HeadFirstJavaBook.jpg");
                                bookDetailsList.add(bookDetailsdata);
                                                           
				session.setAttribute("BookDetails", bookDetailsList);
				RequestDispatcher rd = request.getRequestDispatcher("BookInfo.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ViewAllTrainees.jsp");
			} catch (IOException | ServletException e) {
				// TODO Auto-generated catch block
                        
                                System.out.println("error in showbookdetails.java "+e.getMessage());
                        }
                }
                else if(request.getParameter("lifeiswhatyoumakeit")!=null){
                    try {
				//ArrayList<BookDetailsBean> bookDetailsList = service.viewAllCartDetails();
                                ArrayList<BookDetailsBean> bookDetailsList = new ArrayList<BookDetailsBean>();
                                    BookDetailsBean bookDetailsdata=new BookDetailsBean("Life is what you make it","Preeti Shenoy","great book",500,"images\\lifeiswhatyoumakeit.jpg");
                                bookDetailsList.add(bookDetailsdata);
                                
				session.setAttribute("BookDetails", bookDetailsList);
				RequestDispatcher rd = request.getRequestDispatcher("BookInfo.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ViewAllTrainees.jsp");
			} catch (IOException | ServletException e) {
				// TODO Auto-generated catch block
                        
                                System.out.println("error in showbookdetails.java "+e.getMessage());
                        }
                }
                else if(request.getParameter("Java2TheCompleteReference")!=null){
                    try {
				//ArrayList<BookDetailsBean> bookDetailsList = service.viewAllCartDetails();
                                ArrayList<BookDetailsBean> bookDetailsList = new ArrayList<BookDetailsBean>();
                                    BookDetailsBean bookDetailsdata=new BookDetailsBean("The Complete reference java 2","Herbert Schildt","great book",500,"images\\Java2TheCompleteReference.jpg");
                                bookDetailsList.add(bookDetailsdata);
                                
				session.setAttribute("BookDetails", bookDetailsList);
				RequestDispatcher rd = request.getRequestDispatcher("BookInfo.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ViewAllTrainees.jsp");
			} catch (IOException | ServletException e) {
				// TODO Auto-generated catch block
                        
                                System.out.println("error in showbookdetails.java "+e.getMessage());
                        }
                }
                else if(request.getParameter("thinkingofjava")!=null){
                    try {
				//ArrayList<BookDetailsBean> bookDetailsList = service.viewAllCartDetails();
                                ArrayList<BookDetailsBean> bookDetailsList = new ArrayList<BookDetailsBean>();
                                    BookDetailsBean bookDetailsdata=new BookDetailsBean("Thinking in JAVA","by Bruce Eckel","great book",500,"images\\thinkingofjava.jpg");
                                bookDetailsList.add(bookDetailsdata);
                                
				session.setAttribute("BookDetails", bookDetailsList);
				RequestDispatcher rd = request.getRequestDispatcher("BookInfo.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ViewAllTrainees.jsp");
			} catch (IOException | ServletException e) {
				// TODO Auto-generated catch block
                        
                                System.out.println("error in showbookdetails.java "+e.getMessage());
                        }
                }
            }
            
        }
        

}
