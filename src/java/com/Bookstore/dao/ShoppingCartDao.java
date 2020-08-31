package com.Bookstore.dao;

import com.Bookstore.bean.OrderBean;
import com.Bookstore.bean.ShoppingCartItemBean;
import com.Bookstore.exception.ShoppingCartException;
import com.Bookstore.util.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ShoppingCartDao implements IShoppingCartDao {

	@Override
	public boolean insertBookDetails(ShoppingCartItemBean shoppingCartItemBean)
			throws ShoppingCartException {
		String insertBookDetails = "insert into bookdetails values(?,?,?,?)";
		int count = 0;
		PreparedStatement ps = null;
		
		Connection conn = DbConnection.getConnection();
		try {
			ps = conn.prepareStatement(insertBookDetails);
				ps.setString(1, shoppingCartItemBean.getBookName());
				ps.setInt(2, shoppingCartItemBean.getQuantity());
				ps.setDouble(3, shoppingCartItemBean.getUnitCost());
				ps.setDouble(4, shoppingCartItemBean.getQuantity()*shoppingCartItemBean.getUnitCost());
			count = ps.executeUpdate();
                                    
		} catch (SQLException e) {
			System.out.println(e.getMessage());		
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
		if(count > 0)
			return true;
		else
			return false;
	}

	@Override
	public ArrayList<ShoppingCartItemBean> viewAllCartDetails()
			throws ShoppingCartException {
		String selectQuery = "select bookname, quantity, unitcost, totalcost from bookdetails";
		ArrayList<ShoppingCartItemBean> shoppingCartList = new ArrayList<ShoppingCartItemBean>();
		PreparedStatement ps = null;
		Connection conn = DbConnection.getConnection();
		
		try {
			ps = conn.prepareStatement(selectQuery);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ShoppingCartItemBean bean = new ShoppingCartItemBean();
				
				bean.setBookName(rs.getString(1));
				bean.setQuantity(rs.getInt(2));
				bean.setUnitCost(rs.getDouble(3));
				bean.setTotalCost(rs.getDouble(4));
				
				shoppingCartList.add(bean);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());		
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
		
		return shoppingCartList;
	}

	@Override
	public int removeBook(String bookName) throws ShoppingCartException {
		String deleteQueryBook = "delete from bookdetails where bookname=?";
		int count = 0;
		PreparedStatement ps = null;
		
		Connection conn = DbConnection.getConnection();
		
		try {
			ps = conn.prepareStatement(deleteQueryBook);
			ps.setString(1, bookName);
			
			count = ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());		
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
				
		return count;
	}

	@Override
	public int deleteCart() throws ShoppingCartException {
		String deleteCart = "delete from bookdetails";
		int count = 0;
		PreparedStatement ps = null;
		
		Connection conn = DbConnection.getConnection();
		
		try {
			ps = conn.prepareStatement(deleteCart);
			
			count = ps.executeUpdate();
			
		} catch (SQLException e) {
			throw new ShoppingCartException(e.getMessage());	
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
				
		return count;

	}

	@Override
	public boolean orderPlaced(OrderBean orderBean)
			throws ShoppingCartException {
		String insertOrder = "insert into orders values(order_seq.NEXTVAL, ? , SYSDATE , ?)";
		int count = 0;
		PreparedStatement ps = null;
		
		Connection conn = DbConnection.getConnection();
		try{
			ps = conn.prepareStatement(insertOrder,
					new String[] { "orderid" });
			ps.setString(1, "Anup");
			ps.setDouble(2, orderBean.getOrderValue());
			count = ps.executeUpdate();
			Long orderId = null;
			
			if (count > 0) {
				ResultSet generatedKeys = ps.getGeneratedKeys();

				if (null != generatedKeys && generatedKeys.next()) {

					orderId = generatedKeys.getLong(1);
				}
				
			}
		} catch (SQLException e) {
			throw new ShoppingCartException(e.getMessage());	
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null)
					conn.close();
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
		
		if(count>0){
			return true;
		}
		else {
			return false;
		}

	}

	@Override
	public OrderBean orderDetails() throws ShoppingCartException {
		String selectOrderQuery = "select orderid, userid, ordertotal from orders";
		OrderBean orderBean = new OrderBean();
		PreparedStatement ps = null;
		Connection conn = DbConnection.getConnection();
		
		try {
			ps = conn.prepareStatement(selectOrderQuery);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				orderBean.setOrderId(rs.getString(1));
				orderBean.setUserId(rs.getString(2));
				orderBean.setOrderValue(rs.getDouble(3));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());		
		}finally {
			try {
				if (ps != null)
					ps.close();
				else if (conn != null && !conn.isClosed()){
					conn.close();
                                        Thread.sleep(1000);
                                }
			} catch (Exception e2) {
				throw new ShoppingCartException("Error in closing db connection" + e2.getMessage());
			}
		}	
		
		return orderBean;
	}
}
