package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import bean.ApplicantDetailsBeans;

//import com.oreilly.servlet.MultipartRequest;

import datalayer.OperationDb;


public class ApplicantDetailsStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		String Path="E:\\workspace\\traning project\\WebContent\\uploads";
		MultipartRequest m=new MultipartRequest(request,Path);
		String email=m.getParameter("email");
		String fname=m.getParameter("fname");
		String lname=m.getParameter("lname");
		String address=m.getParameter("address");
		String city=m.getParameter("city");
		String state=m.getParameter("state");
		String zip=m.getParameter("zip");
		String country=m.getParameter("country");
		String phone=m.getParameter("phone");
		String proof=m.getParameter("proof");
		String occupation=m.getParameter("occupation");
		String oaddress=m.getParameter("oaddress");
		String ocity=m.getParameter("ocity");
		String ostate=m.getParameter("ostate");
		String ozip=m.getParameter("ozip");
		String ocountry=m.getParameter("ocountry");
		String sitedetails=m.getParameter("sitedetails");
		String pic=m.getFilesystemName("pic");
		ApplicantDetailsBeans beans=new ApplicantDetailsBeans(email, fname, lname, address, city, state, zip, country, phone, proof, occupation, oaddress, ocity, ostate, ozip, ocountry, sitedetails, pic,-1);
		OperationDb db=new OperationDb();
		db.saveApplicantDetails(beans);
		response.sendRedirect("ApplicantMain.jsp");
	}
	

}
