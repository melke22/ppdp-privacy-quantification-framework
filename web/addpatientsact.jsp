<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<html>
<head>
</head>
<body>

<%
    
    String pid = request.getParameter("pid");
    String pname = request.getParameter("pname");
    String bgroup = request.getParameter("bgroup");
     String disease = request.getParameter("disease");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String city = request.getParameter("city");
    String dob = request.getParameter("dob");
    String age = request.getParameter("age");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    String zip = request.getParameter("zip");
    String year = request.getParameter("year");
    
    try{
       
       
        Connection co = databasecon.getconnection();

PreparedStatement ps = co.prepareStatement("insert into patientdetails values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,pid);
ps.setString(2,pname);
ps.setString(3,bgroup);
ps.setString(4,disease);
ps.setString(5,email);
ps.setString(6,mobile);
ps.setString(7,city);
ps.setString(8,dob);
ps.setString(9,age);
ps.setString(10,address);
ps.setString(11,gender);
ps.setString(12,zip);
ps.setString(13,year);

int i = ps.executeUpdate();

if(i>0)
{

response.sendRedirect("addpatients.jsp?m1=success");

}

else{

response.sendRedirect("addpatients.jsp?m2=Failed");

}


    }
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

  