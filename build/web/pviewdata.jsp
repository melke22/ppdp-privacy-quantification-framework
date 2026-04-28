<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Privacy Preserving</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Login Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('#');</script> 

    <%}
    %>
<body>
<div id="container">
  <div class="header">
    <div class="topmenu">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="doctor.jsp">Doctor</a></li>
        <li><a href="analyst.jsp">Analyst</a></li>
        <li><a href="patient.jsp">Patient</a></li>
        
      </ul>
    </div>
  </div>
  <div class="clear"></div>
  <div class="banner">
    </div>
  <div class="clear"></div>
  <div class="workzone">
    <div class="workzone-left">
      <div>
      
        <br><center>  
                <h1>View  Details</h1>
                <br>
       <%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<% 
 
       String pid = session.getAttribute("pid").toString();
        
try{ 
	
	Connection con=databasecon.getconnection();       
	PreparedStatement pst=con.prepareStatement("select * from patientstatus where pid='"+pid+"' ");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <table style="width:100%" border="5">
         
  <tr>
    <th><font color="red">PID</font></th>
        <th><font color="red">Name</font> </th>
        <th><font color="red">Blood Group</font></th>
        <th><font color="red">Disease</font></th>
        <th><font color="red">Email</font></th>
        <th><font color="red">Mobile</font></th>
        <th><font color="red">City</font></th>
        <th><font color="red">Dob</font></th>
        <th><font color="red">Age</font></th>
        <th><font color="red">Address</font></th>
        <th><font color="red">Gender</font></th>
        <th><font color="red">Zip</font></th>
        <th><font color="red">Status</font></th>
        
         
 </tr>

<%
       
	while(rs.next()){
            %><tr><th><%=rs.getString("pid")%></th>
                <th><%=rs.getString("pname")%></th>
                <th><%=rs.getString("blood")%></th>                
                <th><%=rs.getString("disease")%></th>
                <th><%=rs.getString("email")%></th>
                <th><%=rs.getString("mobile")%></th>
                <th><%=rs.getString("city")%></th>
                <th><%=rs.getString("dob")%></th>
                <th><%=rs.getString("age")%></th>
                <th><%=rs.getString("address")%></th>
                <th><%=rs.getString("gender")%></th>
                 <th><%=rs.getString("zipcode")%></th>
                  <th><%=rs.getString("status")%></th>
               
                
        </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>         
                
         </center></br>
      </div>
      <div class="clear"></div>
      
    </div>
    <div class="workzone-right">
      <div>
        <h1>Patient's Menu</h1>
        <div class="newszone">
          <div>
            <div>
              <div class="newssubheading"><a href="patienthome.jsp">Home</a></div>
                 </div>
            
            <div>
              <div class="newssubheading">  <a href="pviewdata.jsp">View Status</a></div>
                 </div>
              
              
                            
              <div>
              <div class="newssubheading">   <a href="logout.jsp">Logout</a></div>
                 </div>
             
          </div>
        </div>
         <br><Br>
        <div class="clear"></div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>
<div class="clear"></div>

<div class="clear"></div>

</body>
 
</html>
 
