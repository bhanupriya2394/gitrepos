package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import datalayer.OperationDb;

/**
 * Servlet implementation class StatusUpdateServlet
 */
public class StatusUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter out=response.getWriter();
		String msg="Application Accepted";
		String msg1="Application Rejected";
		String msg2="Application processing pending";
		
		
		int status=0;
		OperationDb db=new OperationDb();
	    int rid=Integer.parseInt(request.getParameter("rid"));
		String btn=request.getParameter("btn");
		String phone=request.getParameter("phone");
		
		System.out.println("phoneno.:"+phone);
		
		if (btn.equals("accept")) {
			status=1;
			int res=db.updateStatus(rid, status);
			if(res==1){
			//String msg="Application Accepted";
			smsDone.sunSoftSend(phone, msg);
			out.print("accepted");
			}
			
		}
		if (btn.equals("reject")) {
			status=0;
			db.updateStatus(rid, status);
			
			//String msg1="Application Rejected";
			smsDone.sunSoftSend(phone, msg1);
			out.print("application rejected");
			
			
		}
		if (btn.equals("pending")) {
			
		status=2;
	    db.updateStatus(rid, status);
		
		smsDone.sunSoftSend(phone, msg2);
		out.print("pending");
		
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
