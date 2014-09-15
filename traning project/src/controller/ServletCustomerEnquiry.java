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

import bean.BeanOrderSales;

import datalayer.OperationDb;

/**
 * Servlet implementation class ServletCustomerEnquiry
 */
public class ServletCustomerEnquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader( "Pragma", "no-cache" );
		  response.setHeader( "Cache-Control", "no-cache" );
		  response.setDateHeader( "Expires", 0 );
		PrintWriter out=response.getWriter();
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String email=request.getParameter("email");
		System.out.println(from);
		System.out.println(to);
		System.out.println(email);
			OperationDb db=new OperationDb();
			List<BeanOrderSales> all=db.fetchSalesRecords(from+" 00.00.00",to+" 23.59.59",email);
				
				Gson gson = new Gson();
				JsonElement element = gson.toJsonTree(all, new TypeToken<List<BeanOrderSales>>() {}.getType());

				JsonArray jsonArray = element.getAsJsonArray();
				response.setContentType("application/json");
				System.out.println(jsonArray);
				out.print(jsonArray);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
