<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<%
    
    String user = request.getParameter("user");
    
    
    try{
       
       
        Connection co = databasecon.getconnection();

PreparedStatement ps = co.prepareStatement("delete from analyst where username = '"+user+"'");


int i = ps.executeUpdate();

if(i>0)
{

response.sendRedirect("viewanalyst.jsp?m1=success");

}

else{

response.sendRedirect("viewanalyst.jsp?m2=Failed");

}


    }
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

  