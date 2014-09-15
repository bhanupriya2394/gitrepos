package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datalayer.OperationDb;

import bean.SignUpBean;

/**
 * Servlet implementation class SignUpSave
 */
public class SignUpSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		
		SignUpBean bean=new SignUpBean();
		HttpSession ssn=request.getSession();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		
		String code=request.getParameter("code");
		String scode=(String) ssn.getAttribute("code");
		
		
		if(scode.equals(code)){
			bean.setEmail(email);
			bean.setPassword(password);
			bean.setPhone(phone);
			bean.setCode(code);
			OperationDb db=new OperationDb();
			db.saveRecord(bean);
			out.print("record saved successfully");
			
		}
		
		
		else
		{
			out.print("error");
			
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
