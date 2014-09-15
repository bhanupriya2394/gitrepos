package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SignUpBean;

import datalayer.OperationDb;


public class PasswordRecovery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		OperationDb db=new OperationDb();
		SignUpBean bean=db.fetchPassword(email);
		System.out.println(bean.getPhone()+" "+bean.getPassword() );
		//Integer.parseInt(bean.getPassword());
	//	out.print(bean.getPhone()+","+bean.getPassword());

		String password="Your Password:-"+bean.getPassword();
		smsDone.sunSoftSend(bean.getPhone(),password);
		out.print("password sent");
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
