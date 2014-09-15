package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanFeedback;

import datalayer.OperationDb;


public class ServletFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String msg=request.getParameter("msg");
		String feed=request.getParameter("feed");
		OperationDb db=new OperationDb();
		BeanFeedback bean=new BeanFeedback(name, msg, feed);
		db.saveFeed(bean);
		out.print("saved");
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
