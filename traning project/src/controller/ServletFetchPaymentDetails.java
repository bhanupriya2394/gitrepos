package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;


import bean.BeanPaymentPanel;
import datalayer.OperationDb;

public class ServletFetchPaymentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter out=response.getWriter();
		System.out.println("***reached in servlet***");
		String email=request.getParameter("email");
		OperationDb db=new OperationDb();
        BeanPaymentPanel bean=db.fetchpayment(email);
		JSONObject json=new JSONObject();
		try{
			json.put("email",bean.getEmailid());
			json.put("amount",bean.getAmount());
			json.put("date",bean.getDate());
			json.put("medium",bean.getMedium());
			json.put("chknum",bean.getChknum());
			out.print(json);
			System.out.println("................"+json);
			}
		catch (Exception e) {
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
