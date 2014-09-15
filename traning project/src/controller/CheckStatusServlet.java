package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import datalayer.OperationDb;

/**
 * Servlet implementation class CheckStatusServlet
 */
public class CheckStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter out=response.getWriter();
		System.out.println("***reached in servlet***");
		String emailId=request.getParameter("id");
		try {
			if (emailId.equals(null)) {
				out.print("fill email id");
			} else {

				OperationDb db=new OperationDb();
				int status=db.checkStatus(emailId);
				System.out.println(status);
				out.print(status);
			
			}
		} catch (Exception e) {
			out.print("enter your details first");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
