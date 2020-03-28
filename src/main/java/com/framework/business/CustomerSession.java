package com.framework.business;

import java.util.*;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("session")
public class CustomerSession {
	//http://localhost/add2Cart?prodName=nokia
	public ArrayList<String> cart=new ArrayList<String> ();
	public boolean isCustomerLoggedin=false;
	
}
