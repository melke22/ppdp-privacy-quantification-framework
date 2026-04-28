<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String pass = request.getParameter("password");
    System.out.println(pass);
    try{
       
     // String username=null;
       //String password=null;
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from analyst where username='"+username+"' and password='"+pass+"'");
       if(rs.next())
        {
         String  user1 = rs.getString(2);
		   session.setAttribute("username",username);
		   System.out.println("User:"+username);
			response.sendRedirect("analysthome.jsp?m1=success");
        }
       else 
        {
            response.sendRedirect("analyst.jpg?m2=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminact"+e.getMessage());
    }
%>



