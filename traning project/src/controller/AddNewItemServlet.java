package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datalayer.OperationDb;

import bean.AddItemBean;


public class AddNewItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		System.out.println("***reached in servlet***");
		String item=request.getParameter("item");
		String itemtype=request.getParameter("itemtype");
		String price=request.getParameter("price");
		AddItemBean bean=new AddItemBean(item, itemtype, price);
		OperationDb db=new OperationDb();
		db.saveItem(bean);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
