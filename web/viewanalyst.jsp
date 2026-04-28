<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Privacy Preserving</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Analyst Deleted');</script>
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
      
        <center>  
                <h1>Analyst Details</h1>
             
<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<% 
        try{ 
	Connection con=databasecon.getconnection();       
	PreparedStatement pst=con.prepareStatement("select * from analyst ");   
	ResultSet rs=pst.executeQuery();
        %>
        
        <table style="width:40%" border="5">
         
  <tr>
    <th><font color="red">ID</font></th>
        <th><font color="red">Analyst Name</font> </th>
        <th><font color="red">Delete</font> </th>
        
        
         
 </tr>

<%
       
	while(rs.next()){
            %><tr><th><%=rs.getString("id")%></th>
                <th><%=rs.getString("username")%></th>
                <th><a href="delete.jsp?user=<%=rs.getString("username")%>"><font color="black">Click</a></th>
                
                
                
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
 
