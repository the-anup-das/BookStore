package com.Bookstore.bean;

public class OrderBean {

	private String orderId;
	private String userId;
	private double orderValue;
	
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderBean(String orderId, String userId, double orderValue) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.orderValue = orderValue;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public double getOrderValue() {
		return orderValue;
	}

	public void setOrderValue(double orderValue) {
		this.orderValue = orderValue;
	}
	
	
	
}
