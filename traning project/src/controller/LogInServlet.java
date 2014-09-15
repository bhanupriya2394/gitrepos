package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.BeanFranchiseTable;
import bean.SignUpBean;

import datalayer.OperationDb;


public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
		HttpSession ssn=request.getSession();
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("pwd");
		String type=request.getParameter("type");
		OperationDb db=new OperationDb();
		
			if(type.equals("Applicant"))
			{
				//out.print("Applicant");
				SignUpBean beans=db.checkApplicant1(email);
				if(beans.getPassword().equals(password)){
					ssn.setAttribute("email",email);
					System.out.println(ssn.getAttribute("email"));
					out.print("Applicant");
				}
			
			else{out.print("Sign In As Applicant First");}
			}
			else if(type.equals("Franchise"))
			{
				BeanFranchiseTable bean=db.checkFranchise(email);
				if(bean!=null){String pass=bean.getPassword();
				if(password.equals(pass))
				{
					ssn.setAttribute("email",email);
						out.print("Franchise");
				}
				else{out.print("unauthorized");}
				
			}
				else{out.print("unauthorized");}
				
					
			}
			else if(type.equals("Franchiser"))
			{
			if(email.equals("admin@gmail.com") && (password.equals("admin"))){
				ssn.setAttribute("email",email);
				out.print("Franchiser");
			}
			else{out.print("u r not admin");}
			}
			else 
			{
			out.print("invalid user");
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
