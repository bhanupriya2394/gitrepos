package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.BeanChat;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

import datalayer.OperationDb;

public class ServletFetchChat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );
			PrintWriter out=response.getWriter();
			String id=request.getParameter("id");
			OperationDb db=new OperationDb();
			List<BeanChat> Beans= db.fetchMessages(id);
			Gson gson = new Gson();
			JsonElement element = gson.toJsonTree(Beans, new TypeToken<List<BeanChat>>() {}.getType());
	   
			JsonArray jsonArray = element.getAsJsonArray();
			response.setContentType("application/json");
			System.out.println(jsonArray);
			out.print(jsonArray);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
