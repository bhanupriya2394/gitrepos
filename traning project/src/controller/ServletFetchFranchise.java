package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ApplicantDetailsBeans;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletFetchFranchise
 */
public class ServletFetchFranchise extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter out=response.getWriter();
		OperationDb db=new OperationDb();
		List<ApplicantDetailsBeans> cities=db.fetchAllFranchise();
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(cities, new TypeToken<List<ApplicantDetailsBeans>>() {}.getType());
   
		JsonArray jsonArray = element.getAsJsonArray();
		response.setContentType("application/json");
		System.out.println(jsonArray);
		out.print(jsonArray);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
