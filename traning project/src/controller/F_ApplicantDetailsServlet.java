package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;



import bean.ApplicantDetailsBeans;

import datalayer.OperationDb;

/**
 * Servlet implementation class F_ApplicantDetailsServlet
 */
public class F_ApplicantDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
			PrintWriter out=response.getWriter();
			
			OperationDb db=new OperationDb();
			List<ApplicantDetailsBeans> detailsBeans=db.fetchAllRecords();
			Gson gson = new Gson();
			JsonElement element = gson.toJsonTree(detailsBeans, new TypeToken<List<ApplicantDetailsBeans>>() {}.getType());
	   
			JsonArray jsonArray = element.getAsJsonArray();
			response.setContentType("application/json");
			out.print(jsonArray);
			
			
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
