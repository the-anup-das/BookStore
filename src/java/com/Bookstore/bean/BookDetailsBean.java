/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Bookstore.bean;

/**
 *
 * @author hp
 */
public class BookDetailsBean {
    private String bookName;
    private String author;
    private String details;
    private double price;
    private String imgPath;

    public BookDetailsBean(String bookName, String author, String details, double price,String imgPath) {
        this.bookName = bookName;
        this.author = author;
        this.details = details;
        this.price = price;
        this.imgPath=imgPath;
    }
    
    public BookDetailsBean() {
		super();
	}

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }
    
    
}
