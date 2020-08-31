package com.Bookstore.service;

import com.Bookstore.bean.OrderBean;
import com.Bookstore.bean.ShoppingCartItemBean;
import com.Bookstore.dao.IShoppingCartDao;
import com.Bookstore.dao.ShoppingCartDao;
import com.Bookstore.exception.ShoppingCartException;
import java.util.ArrayList;


public class ShoppingCartService implements IShoppingCartService {

	IShoppingCartDao dao = new ShoppingCartDao();
	@Override
	public boolean insertBookDetails(ShoppingCartItemBean shoppingCartItemBean)
			throws ShoppingCartException {
		return dao.insertBookDetails(shoppingCartItemBean);
	}
	@Override
	public ArrayList<ShoppingCartItemBean> viewAllCartDetails()
			throws ShoppingCartException {
		return dao.viewAllCartDetails();
	}
	@Override
	public int removeBook(String bookName) throws ShoppingCartException {
		return dao.removeBook(bookName);
	}
	@Override
	public int deleteCart() throws ShoppingCartException {
		return dao.deleteCart();
	}
	@Override
	public boolean orderPlaced(OrderBean orderBean)
			throws ShoppingCartException {
		return dao.orderPlaced(orderBean);
	}
	@Override
	public OrderBean orderDetails() throws ShoppingCartException {
		return dao.orderDetails();
	}

	
}
