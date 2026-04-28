<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Privacy Preserving</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Registration Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed');</script> 

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
      
        <br><center>  <form name="myform" action="analystact.jsp" method="post">
         <table border="0" >
             <font color="black" size="5">Analyst Login</font></h2> 
             <br><br>
                     <tr><td><font color="black" size="3"> User Name :</td><td><input type="text" name="username" required="" /></td></tr>
         <tr><td><font color="black" size="3">Password :</td><td><input type="password" name="password" required="" /></td></tr>

         <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="    Login    " /></td></tr>
         <tr></tr>      
         </table>
                    
                    <a href="analystreg.jsp"><font color="black">Registration</a>           
         </form>
         </center></br>
      </div>
      <div class="clear"></div>
      
    </div>
    <div class="workzone-right">
      <div>
        <h1>Sidebar Menu</h1>
        <div class="newszone">
          <div>
            <div>
              <div class="newssubheading"><a href="index.html">Home</a></div>
                 </div>
            <div>
              <div class="newssubheading">  <a href="admin.jsp">Admin</a></div>
               </div>
            <div>
              <div class="newssubheading">  <a href="doctor.jsp">Doctor</a></div>
                 </div>
              <div>
              <div class="newssubheading">  <a href="analyst.jsp">Analyst</a></div>
                 </div>
              <div>
              <div class="newssubheading">   <a href="patient.jsp">Patient</a></div>
                 </div>
            
          </div>
        </div>
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
 
