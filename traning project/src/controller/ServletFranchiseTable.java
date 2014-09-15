package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanFranchiseTable;
import bean.SignUpBean;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletFranchiseTable
 */
public class ServletFranchiseTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email");
		PrintWriter out= response.getWriter();
	//	System.out.println(email);
		String msg="you can sign in as frachise now..congrats with old username and password";
		String st="1";
		OperationDb db=new OperationDb();
		BeanFranchiseTable beans=db.fetchfrachise(email);
		//System.out.println(beans.getEmail());
		
		SignUpBean bean=db.fetchDetail(email);
		BeanFranchiseTable table=new BeanFranchiseTable(bean.getEmail(), bean.getPassword(), bean.getPhone(), st);
		db.dosave(table);
		smsDone.sunSoftSend(bean.getPhone(), msg);
		out.print("Applicant aunthenticated");
		
		
		
			//else{out.print("Applicant already aunthenticated");}
		}
		
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
