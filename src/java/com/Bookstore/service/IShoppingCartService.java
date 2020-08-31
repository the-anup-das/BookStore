package com.Bookstore.service;

import com.Bookstore.bean.OrderBean;
import com.Bookstore.bean.ShoppingCartItemBean;
import com.Bookstore.exception.ShoppingCartException;
import java.util.ArrayList;


public interface IShoppingCartService {

	public boolean insertBookDetails(ShoppingCartItemBean shoppingCartItemBean) throws ShoppingCartException;
	public ArrayList<ShoppingCartItemBean> viewAllCartDetails() throws ShoppingCartException;
	public int removeBook(String bookName) throws ShoppingCartException;
	public int deleteCart() throws ShoppingCartException;
	public boolean orderPlaced(OrderBean orderBean) throws ShoppingCartException;
	public OrderBean orderDetails() throws ShoppingCartException;
}
