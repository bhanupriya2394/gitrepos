package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SignUpBean;
import datalayer.OperationDb;


public class ServletCheckEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
		String email=request.getParameter("eid");
		PrintWriter out=response.getWriter();
		OperationDb db=new OperationDb();
		SignUpBean bean=db.checkEmail(email);
		if(bean!=null){
			out.print("username alredy Exist");
		}
		else{
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
