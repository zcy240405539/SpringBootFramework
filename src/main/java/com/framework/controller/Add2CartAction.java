package com.framework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import com.framework.business.CustomerSession;
import com.opensymphony.xwork2.ActionSupport;

public class Add2CartAction  extends ActionSupport
{
	 private static final long serialVersionUID = 1L;
	 public String prodName;
	 public String allProducts;
	 @Autowired
	 CustomerSession csi;
	  
	 public String process() {
	  try {
	   csi.cart.add(prodName);
	   allProducts=csi.cart.toString();
	  }catch(Exception e) {
	   e.printStackTrace();
	  }
	  
	  return SUCCESS;
	 }
	 	  

	 public void setProdName(String prodName) {
	  this.prodName = prodName;
	 }

	 
	 public String getAllProducts() {
	  return allProducts;
	 }

	 public void setAllProducts(String allProducts) {
	  this.allProducts = allProducts;
	 }

	  

	 public void setCsi(CustomerSession csi) {
	  this.csi = csi;
	 }
}