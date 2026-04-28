<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>
<%
    String pid = request.getParameter("pid");
    System.out.println(pid);
    session.setAttribute("pid",pid);
		   
    try{
       
      //String user=null;
       //String password=null;
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from patientdetails where pid='"+pid+"'");
       if(rs.next())
        {
         
		   
			response.sendRedirect("patienthome.jsp?m1=success");
        }
       else 
        {
            response.sendRedirect("patient.jpg?m2=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminact"+e.getMessage());
    }
%>



