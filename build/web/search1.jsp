<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="sources.databasecon"%>
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
      <%  
      String username = session.getAttribute("username").toString();
      Connection con =  databasecon.getconnection();
      ResultSet rs=null;
      
 try{
       
        
        Statement st=con.createStatement();
    rs=st.executeQuery("select distinct disease from ldiversity");
}   catch(Exception e){
    e.printStackTrace();
    }
              
      %>
        <br><center>  
               
               
              <table>      
                    <form action="searchact1.jsp" method="post"  >
      
                        <font color="black" size="3"> <b>Search </b></font><br><br>
    
        <tr>
        <th><font color="black" size="3">Select Disease:</th>
        <th>
            <select name="disease" required style="width:80px" id="product" onChange="getcomp()">
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("disease")%>"><%=rs.getString("disease")%></option>

                <%}%>
            </select>
        </th>
        </tr>
       
        
        

                        
                        
               
             


                <tr>
                    <td>
                        <font size="2" color="black"> <br><input type="submit"  align="right" value='Search' />
                    </td>


                    <td>
                        <font size="2" color="black"><br> <input type="reset" align="left" value='Reset'  /></td>
                </tr></form></table>
                </br>
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
        <br><br>
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
 
