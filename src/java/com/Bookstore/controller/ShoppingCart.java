package com.Bookstore.controller;

import com.Bookstore.bean.BookDetailsBean;
import com.Bookstore.bean.OrderBean;
import com.Bookstore.bean.ShoppingCartItemBean;
import com.Bookstore.exception.ShoppingCartException;
import com.Bookstore.service.IShoppingCartService;
import com.Bookstore.service.ShoppingCartService;
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
 * Servlet implementation class ShoppingCart
 */
@WebServlet(name="Shopping Cart", urlPatterns={"/AddBook","/BookDetails2","/BookDetails3","/BookDetails4","/CartDetails","/DeleteBook","/OrderPlaced","/OrderPlacedSuccessfully"})
public class ShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException {
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reqURL = request.getServletPath();
		HttpSession session = request.getSession();
		
		IShoppingCartService service = new ShoppingCartService();
		
		if(reqURL.equals("/AddBook")) { 
			//get data from showBookDetails serve let
                        
                        ArrayList<BookDetailsBean> bookDetailsList = new ArrayList<BookDetailsBean>();
                        
                       bookDetailsList=(ArrayList<BookDetailsBean>) request.getSession().getAttribute("BookDetails");
                        BookDetailsBean bookDetailsBean=new BookDetailsBean();
                               bookDetailsBean =bookDetailsList.get(0);
                        
			String bookName =bookDetailsBean.getBookName(); //request.getParameter("bookName");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = bookDetailsBean.getPrice();//Double.parseDouble(request.getParameter("price"));

			ShoppingCartItemBean shoppingCartItemBean = new ShoppingCartItemBean();			
			shoppingCartItemBean.setBookName(bookName);
			shoppingCartItemBean.setQuantity(quantity);
			shoppingCartItemBean.setUnitCost(price);
			
			session.setAttribute("CartDetails1", shoppingCartItemBean);
			
			try {
				boolean inserted = service.insertBookDetails(shoppingCartItemBean);
				if(inserted) {
					RequestDispatcher rd = request.getRequestDispatcher("BookInfo.jsp");
					rd.forward(request, response);
				}
				else
					System.out.println("fail");
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}	
		if(reqURL.equals("/BookDetails2")) {
			
			String bookName = request.getParameter("bookName");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			
			ShoppingCartItemBean shoppingCartItemBean = new ShoppingCartItemBean();
			
			shoppingCartItemBean.setBookName(bookName);
			shoppingCartItemBean.setQuantity(quantity);
			shoppingCartItemBean.setUnitCost(price);
			
			session.setAttribute("CartDetails2", shoppingCartItemBean);
			
			try {
				boolean inserted = service.insertBookDetails(shoppingCartItemBean);
				if(inserted) {
					RequestDispatcher rd = request.getRequestDispatcher("BookDetails.jsp");
					rd.forward(request, response);
				}
				else
					System.out.println("fail");
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}	
		if(reqURL.equals("/BookDetails3")) {
	
			String bookName = request.getParameter("bookName");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			
			ShoppingCartItemBean shoppingCartItemBean = new ShoppingCartItemBean();
			
			shoppingCartItemBean.setBookName(bookName);
			shoppingCartItemBean.setQuantity(quantity);
			shoppingCartItemBean.setUnitCost(price);
			
			session.setAttribute("CartDetails3", shoppingCartItemBean);
			
			try {
				boolean inserted = service.insertBookDetails(shoppingCartItemBean);
				if(inserted) {
					RequestDispatcher rd = request.getRequestDispatcher("BookDetails.jsp");
					rd.forward(request, response);
				}
				else
					System.out.println("fail");
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		}	

		if(reqURL.equals("/BookDetails4")) {
	
			String bookName = request.getParameter("bookName");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			
			ShoppingCartItemBean shoppingCartItemBean = new ShoppingCartItemBean();
			
			shoppingCartItemBean.setBookName(bookName);
			shoppingCartItemBean.setQuantity(quantity);
			shoppingCartItemBean.setUnitCost(price);
			
			session.setAttribute("CartDetails4", shoppingCartItemBean);
			
			try {
				boolean inserted = service.insertBookDetails(shoppingCartItemBean);
				if(inserted) {
					RequestDispatcher rd = request.getRequestDispatcher("BookDetails.jsp");
					rd.forward(request, response);
				}
				else
					System.out.println("fail");
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		if(reqURL.equals("/CartDetails")) {
			try {
				ArrayList<ShoppingCartItemBean> shoppingCartList = service.viewAllCartDetails();
				session.setAttribute("CartDetails", shoppingCartList);
				RequestDispatcher rd = request.getRequestDispatcher("CartDetails.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ViewAllTrainees.jsp");
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(reqURL.equals("/DeleteBook")) {
			String bookName = request.getParameter("bookName");
			try {
				int deleted = service.removeBook(bookName);
				if(deleted > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("CartDetails");
					rd.forward(request, response);
					//response.sendRedirect("ViewAllTrainees");
				}
				else {
					System.out.println("Failed");
				}
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(reqURL.equals("/OrderPlaced")) {
			OrderBean orderBean = new OrderBean();
			
			String orderTotal = request.getParameter("total");
			
			orderBean.setOrderValue(Double.parseDouble(orderTotal));
			
			try{
				boolean orderPlaced = service.orderPlaced(orderBean);
				OrderBean orderBeanDetails = service.orderDetails();
				
				session.setAttribute("OrderDetails", orderBeanDetails);
				
				if(orderPlaced  && !orderBean.equals(null)){
					RequestDispatcher rd = request.getRequestDispatcher("OrderPlaced.jsp");
					rd.forward(request, response);
					//response.sendRedirect("ViewAllTrainees");
				}
				else {
					System.out.println("Failed");
				}
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(reqURL.equals("/OrderPlacedSuccessfully")) {
			
			try {
				int deleted = service.deleteCart();
				
				
				if(deleted > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
					//response.sendRedirect("ViewAllTrainees");
				}
				else {
					System.out.println("Failed");
				}
			} catch (ShoppingCartException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
