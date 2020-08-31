package com.Bookstore.bean;

public class ShoppingCartItemBean {
	
	private String bookName;
	private int quantity;
	private double unitCost;
	private double totalCost;
	
	public ShoppingCartItemBean(String bookName, int quantity, double unitCost,
			double totalCost) {
		super();
		this.bookName = bookName;
		this.quantity = quantity;
		this.unitCost = unitCost;
		this.totalCost = totalCost;
	}

	public ShoppingCartItemBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getUnitCost() {
		return unitCost;
	}

	public void setUnitCost(double unitCost) {
		this.unitCost = unitCost;
	}

	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	
	
}
