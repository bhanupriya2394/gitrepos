package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datalayer.OperationDb;


public class ServletEditDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String address=request.getParameter("address");
		String oaddress=request.getParameter("oaddress");
		String city=request.getParameter("city");
		String ocity=request.getParameter("ocity");
		String state=request.getParameter("state");
		String ostate=request.getParameter("ostate");
		String phone=request.getParameter("phone");
		String zip=request.getParameter("zip");
		String ozip=request.getParameter("ozip");
		String country=request.getParameter("country");
		String ocountry=request.getParameter("ocountry");
		String sitedetails=request.getParameter("sitedetails");
		String occupation=request.getParameter("occupation");
		System.out.println(fname+lname);
	/*	bean.setEmail(email);
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setAddress(address);
		bean.setOaddress(oaddress);
		bean.setCountry(country);
		bean.setOcountry(ocountry);
		bean.setState(state);
		bean.setOstate(ostate);
		bean.setCity(city);
		bean.setOcity(ocity);
		bean.setPhone(phone);
		bean.setZip(zip);
		bean.setOzip(ozip);
		bean.setSitedetails(sitedetails);
		bean.setOccupation(occupation);*/
		OperationDb db=new OperationDb();
		db.update(email, fname, lname, address, oaddress, city, ocity, state, ostate, zip, ozip, country, ocountry, phone, sitedetails, occupation);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
