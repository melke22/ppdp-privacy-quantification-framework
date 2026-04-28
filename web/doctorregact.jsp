<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<html>
<head>
</head>
<body>

<%
    
    String id = request.getParameter("id");
    String name = request.getParameter("username");
    String password = request.getParameter("password");
     String qualification = request.getParameter("qualification");
     
    try{
       
                                    Connection con = null;                                
                                    Statement st = null;
                                    ResultSet rs = null;
                                    con = databasecon.getconnection();  
                                    st= con.createStatement();
                                    
                                    
PreparedStatement ps = con.prepareStatement("insert into doctor values(?,?,?,?)");

ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,password);
ps.setString(4,qualification);


ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("doctor.jsp?m1=success");
out.println("Record Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

    </body>
</html>

