package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanChat;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletChatFranchiser
 */
public class ServletChatFranchiser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		String eid=request.getParameter("eid");
		String msg=request.getParameter("msg");
		String id=request.getParameter("id");
		BeanChat bean=new BeanChat();
		bean.setEmail(eid);
		bean.setFid(id);
		bean.setMsg(msg);
		OperationDb db=new OperationDb();
		db.saveData(bean);
		out.print("saved ");		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
