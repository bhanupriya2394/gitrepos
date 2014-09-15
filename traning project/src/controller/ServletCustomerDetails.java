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


public class ServletCustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setDateHeader("Expires", 0);
		System.out.println("***reached in servlet***");
		PrintWriter out=response.getWriter();
		String phn=request.getParameter("phone");
		
		OperationDb db=new OperationDb();
		/*BeanOrderSales b=db.fetchCustomer(phn);
		if(b!=null)
		{
			JSONObject json=new JSONObject();
			try{
				json.put("fname",b.getFname());
				json.put("lname",b.getLname());
				json.put("address",b.getAddress());
				System.out.println(json);
				out.print(json);
				}
			catch (Exception e) {
			}
		}
		else
		{
			System.out.println("else part");
			out.print("New Customer");
		}
		*/
		List<BeanOrderSales> all=db.fetchCustomer(phn);
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
