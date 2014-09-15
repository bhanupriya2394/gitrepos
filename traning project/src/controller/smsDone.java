package controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class smsDone {
public static String retval="";
   
    static String sunSoftSend(String mobileno,String msg)
    {
    	String uid="sunsoft123";
    	String pwd="sunsoft123";
    	String sender="SUNSFT";
    	
    	String message="hai WelCome &&&&&&&";
    	message.replaceAll("&","%26");
    	//sample107,sample@107
    	String url="http://smsc11.com/corp/extendingsms1.jsp?uname="+uid+"&pass="+pwd+"&mobile="+mobileno+"&msg="+msg+"&sender="+sender;
       return exeUrl(url);
    }
    static public String exeUrl(String urloc)
    {
      String finalstr="";
      try
         {
       urloc=urloc.replace("%","%25");  
        urloc=urloc.replace(" ","%20");
        //urloc=urloc.replace(":","%3a");
        urloc=urloc.replace("!","%21");
        urloc=urloc.replace("@","%40");
        urloc=urloc.replace("#","%32");
        urloc=urloc.replace("$","%24");   
    
         URL yahoo = new URL(urloc);
              URLConnection yc = yahoo.openConnection();
              BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream()));
              String inputLine;
              while ((inputLine = in.readLine()) != null) 
              {
               finalstr=finalstr+inputLine;
              }
              System.out.println(finalstr);
              in.close();
       }
       catch (Exception e)
       {
         System.out.println(e.toString());
       }
          return finalstr;
    }
    
}