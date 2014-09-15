package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import datalayer.OperationDb;

/**
 * Servlet implementation class ServletFranchiseFillCity
 */
public class ServletFranchiseFillCity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
			PrintWriter out=response.getWriter();
			String city=request.getParameter("city");
			System.out.println(city);
			OperationDb db=new OperationDb();
			String f=db.fetchCity(city);
			
			out.print(f);
			
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
