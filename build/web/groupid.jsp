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
                <h1>K - Anonymity Details</h1>
                <br>
       <%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<% 
 
try{ 
	
	Connection con=databasecon.getconnection();       
	PreparedStatement pst=con.prepareStatement("select * from anonypatient ");
   
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
       
        
         
 </tr>

<%
       
	while(rs.next()){
            %><tr style="color: black"><th><%=rs.getString("pid")%></th>
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
            </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>         
        <br><Br>          
       
      </div>
      <div class="clear"></div>
      
    </div>
    <div class="workzone-right">
      <div>
        <h1>Admin Menu</h1>
        <div class="newszone">
          <div>
            <div>
              <div class="newssubheading"><a href="adminhome.jsp">Home</a></div>
                 </div>
            <div>
              <div class="newssubheading">  <a href="addpatients.jsp">Add Patient Details</a></div>
               </div>
            <div>
              <div class="newssubheading">  <a href="viewpatients.jsp">View Patient Details</a></div>
                 </div>
              <div>
              <div class="newssubheading">  <a href="publishingt.jsp">K - Anonymity </a></div>
                 </div>
              <div>
              <div class="newssubheading">  <a href="l_diversity.jsp">L - Diversity </a></div>
                 </div>
              <div>
              <div class="newssubheading">  <a href="TC.jsp">T - Closeness </a></div>
                 </div>
               <div>
              <div class="newssubheading">  <a href="viewanalyst.jsp">View Analyst</a></div>
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
 
