<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    session.setAttribute("username",username);
    String pass = request.getParameter("password");
    System.out.println(pass);
    try{
       
     // String username=null;
       //String password=null;
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from doctor where username='"+username+"' and password='"+pass+"'");
       if(rs.next())
        {
         String  qualification = rs.getString(4);
		   session.setAttribute("qualification",qualification);
		//   System.out.println("User:"+username);
			response.sendRedirect("doctorhome.jsp?m1=success");
        }
       else 
        {
            response.sendRedirect("doctor.jsp?m2=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminact"+e.getMessage());
    }
%>



