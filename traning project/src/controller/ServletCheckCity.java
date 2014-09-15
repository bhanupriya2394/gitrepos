package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ApplicantDetailsBeans;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletCheckCity
 */
public class ServletCheckCity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
		String city=request.getParameter("city");
		PrintWriter out=response.getWriter();
		OperationDb db=new OperationDb();
		ApplicantDetailsBeans bean=db.checkCity(city);
		if(bean!=null){
			out.print("You need to change location city....franchise already present here..");
		}
		else{
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
