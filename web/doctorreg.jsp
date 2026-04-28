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
     <script>
    function validateform(){  
var username=document.myform.username.value;  
var password=document.myform.password.value;


var num=document.myform.id.value;
 
  
if (document.myform.username.value == "") {
        alert("Enter a username");
        document.myform.username.focus();
        return false;
    }
    if (!/^[a-zA-Z]*$/g.test(document.myform.username.value)) {
        alert("Please use only characters for username");
        
        document.myform.username.focus();
        return false;
    }
else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
  
  

        
        if (isNaN(num)){
   document.getElementById("numloc").innerHTML="Enter Numeric value only";
  return false;
}
        
    

    }
    </script>
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
   <form name="myform" id="loginForm" action="doctorregact.jsp" method="post"  onsubmit="return validateform()" >
    
        <br><center>  
         <table border="0" >
             <font color="black" size="5">Doctor Registration</font></h2> 
             <br><br>
                     
                     <tr><td><font color="black" size="3"> ID :</td><td><input type="text" name="id" required="" /><span id="numloc"></span></td></tr>
                     <tr><td><font color="black" size="3">  Name :</td><td><input type="text" name="username" required="" /></td></tr>
         <tr><td><font color="black" size="3">Password :</td><td><input type="password" name="password" required="" /></td></tr>
         <tr><td><font color="black" size="3"> Qualification :</td><td><input type="text" name="qualification" required="" /></td></tr>

         <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="    Submit    " /></td></tr>
         <tr></tr>      
         </table>
                    
                    <a href="doctorreg.jsp"><font color="black">Registration</a>           
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
 
