package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import bean.ApplicantDetailsBeans;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletFetchApplicantDetails
 */
public class ServletFetchApplicantDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter out=response.getWriter();
		System.out.println("***reached in servlet***");
		String email=request.getParameter("email");
		OperationDb db=new OperationDb();
		ApplicantDetailsBeans bean=db.fetchApplicant(email);
		JSONObject json=new JSONObject();
		try{
			json.put("fname",bean.getFname());
			json.put("lname",bean.getLname());
			json.put("address",bean.getAddress());
			json.put("city",bean.getCity());
			json.put("state",bean.getState());
			json.put("zip",bean.getZip());
			json.put("country",bean.getCountry());
			json.put("phone",bean.getPhone());
			json.put("occupation",bean.getOccupation());
			json.put("oaddress",bean.getOaddress());
			json.put("ocity",bean.getOcity());
			json.put("ostate",bean.getOstate());
			json.put("ozip",bean.getOzip());
			json.put("ocountry",bean.getOcountry());
			json.put("sitedetails",bean.getSitedetails());
			System.out.println(json);
			out.print(json);
			}
		catch (Exception e) {
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
