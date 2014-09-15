package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datalayer.OperationDb;

import bean.BeanPaymentPanel;

/**
 * Servlet implementation class ServletPaymentDetails
 */
public class ServletPaymentDetails extends HttpServlet {	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in servlet");
		PrintWriter out=response.getWriter();
		String uid=request.getParameter("email");
		String amount=request.getParameter("amount");
		System.out.println("AMOUNT=="+amount);
		String medium=request.getParameter("medium");
		String date=request.getParameter("date");
		String num=request.getParameter("chknum");
		BeanPaymentPanel bean=new BeanPaymentPanel(uid, amount, medium, date, num);
		OperationDb db=new OperationDb();
		db.savePaymentPanel(bean);
		out.print("record saved");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
