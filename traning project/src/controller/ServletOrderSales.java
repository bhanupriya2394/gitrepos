package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import datalayer.OperationDb;

import bean.BeanOrderSales;

public class ServletOrderSales extends HttpServlet {
	private static final long serialVersionUID = 1L;
  


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		System.out.println("hii in order servlet.....");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String address=request.getParameter("address");
		String type=request.getParameter("type");
		String fullorder=request.getParameter("item");
		String grandbill=request.getParameter("grandbill");
		float bill=Float.parseFloat(grandbill);
		BeanOrderSales bean=new BeanOrderSales();
		bean.setFemail(email);
		bean.setPhone(phone);
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setAddress(address);
		bean.setType(type);
		bean.setFullorder(fullorder);
		bean.setBill(bill);
		OperationDb db=new OperationDb();
		db.saveOrder(bean);
		PrintWriter out=response.getWriter();
		out.print("order placed");
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
