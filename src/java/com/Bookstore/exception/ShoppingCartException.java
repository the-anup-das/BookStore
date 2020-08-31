package com.Bookstore.exception;

public class ShoppingCartException extends Exception {

	private String message;

	public ShoppingCartException(String message) {
		super();
		this.message = message;
	}

	public ShoppingCartException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMessage() {
		return message;
	}
}
