package com.framework.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import org.springframework.beans.factory.annotation.Autowired;

import com.framework.business.UserBean;
import com.opensymphony.xwork2.ActionSupport;

import sun.misc.Request;

public class UserAction extends ActionSupport implements ServletResponseAware, CookiesAware {
	private static final long serialVersionUID = 1L;
	// HTML source form beans
	public String userid;
	public String pwd;
	public String currentpwd;
	public String username;
	public String address;
	private HttpServletResponse response;
	// For handling cookies
	Map<String, String> cookiesMap;

	@Autowired
	UserBean userBean;

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public Map<String, String> getCookiesMap() {
		return cookiesMap;
	}

	//@Override
	public void setCookiesMap(Map<String, String> cookiesMap) {
		this.cookiesMap = cookiesMap;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getCurrentpwd() {
		return currentpwd;
	}

	public void setCurrentpwd(String currentpwd) {
		this.currentpwd = currentpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/*
	 * public String registerStatus; public String getRegisterStatus() { return
	 * registerStatus; } public void setRegisterStatus(String registerStatus) {
	 * this.registerStatus = registerStatus; }
	 */

	public String Login() {
		String beanResult = userBean.Auth(userid, pwd);
		if(beanResult=="success") {
			// set cookie
			String currentUserid = userBean.user.getUid();
			Cookie userid = new Cookie("userid", currentUserid);
			userid.setMaxAge(60 * 60 * 24);
			userid.setPath("/");
			response.addCookie(userid);			
		}
		return beanResult;
	}

	public String Register() {
		String beanResult = userBean.Register(userid, pwd, username, address);
		// registerStatus = beanResult;
		return beanResult;
	}

	public String Destroy() {
		String currentUserid = getCookieValue("userid");
		this.setUserid(currentUserid);
		String beanResult = userBean.Destroy(userid, pwd);
		return beanResult;
	}

	public String Update() {
		//String currentUserid = cookiesMap.get("userid");
		String currentUserid = getCookieValue("userid");
		this.setUserid(currentUserid);
		String beanResult = userBean.Update(userid,currentpwd,pwd,username,address);
		return beanResult;
	}

	public String getCookieValue(String str) {
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies = request.getCookies();
		String result = null;
		for (Cookie cookie : cookies) {
			System.out.println("cookie: "+cookie.getName()+"="+cookie.getValue());
			if (cookie.getName().equals(str)) {
				result = cookie.getValue();
				break;
			}
		}
		return result;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

}
