package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SmsServlet
 */
public class SmsServlet extends HttpServlet {
	
	
	
	
	private static final long serialVersionUID = 1L;
	public int randomNumberGenerator() {
		
		
		Random random=new Random();
		int aStart=1000;
		int aEnd=9999;
		int range=aEnd-aStart+1;
		int fraction=(int) (range*random.nextDouble());
		int randomNumber=(int)(fraction+aStart);
		System.out.println(randomNumber);
		return randomNumber;
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int number=randomNumberGenerator();
		String msg=number+"";
		HttpSession ssn=request.getSession();
		ssn.setAttribute("code", msg);
		//System.out.println("hi");
		//System.out.println(number);
		String phone=request.getParameter("phoneNum");
		smsDone.sunSoftSend(phone, msg);
		PrintWriter out=response.getWriter();
				out.print(number);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
