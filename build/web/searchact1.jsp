<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>



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
                <h1>Results</h1>
                <br>
       <%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>

<% 
 
    String disease = request.getParameter("disease"); 
    Connection con = databasecon.getconnection();
    Statement st = null;   
    int i = 0;
try{ 
	
	
    
    
	PreparedStatement pst=con.prepareStatement("select *  from ldiversity where disease = '"+disease+"' ");
   
	ResultSet rs=pst.executeQuery();
        
        
        
        while(rs.next()){
            
            i++;
        
        }
       
        
        
        
        
        %>
        
        
        
        
        <table style="width:40%" border="5">
         
  <tr>
    <th><font color="red" size="3">Disease</font></th>
    <th><font color="red" size="3">Count</font> </th>
        
        
        
         
 </tr>

<tr><th><font color="black" size="2"><%=disease%></font></th>
    <th><font color="black" size="2"><%=i%></font></th>
               
                
               
                
        </tr>
        
     </table>

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
        <h1>Analyst's Menu</h1>
        <div class="newszone">
          <div>
            <div>
              <div class="newssubheading"><a href="analysthome.jsp">Home</a></div>
                 </div>
            
            <div>
              <div class="newssubheading">  <a href="search.jsp">Search data</a></div>
                 </div>
              
              <div>
              <div class="newssubheading">  <a href="search1.jsp">Search data</a></div>
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
 
