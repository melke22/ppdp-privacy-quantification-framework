<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Privacy Preserving</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Patient Details Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Failed');</script> 

    <%}
    %>
<body>
     <script>
    function validateform(){  
var pname=document.myform.pname.value;  

var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno');
var num=document.myform.mobile.value;
var zip=document.myform.zip.value;
 
  
if (document.myform.pname.value == "") {
        alert("Enter a username");
        document.myform.pname.focus();
        return false;
    }
    if (!/^[a-zA-Z]*$/g.test(document.myform.pname.value)) {
        alert("Please use only characters for username");
        
        document.myform.pname.focus();
        return false;
    }

  
   var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
}
  if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        
        
        
        
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }
        
        if (isNaN(num)){
   document.getElementById("numloc").innerHTML="Enter Numeric value only";
  return false;
}
  if(zip.length<6){  
  alert("Zip Code must be at least 6 characters long.");  
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
      
        <br><center>  
                <h1>Add Patient Details</h1>
                <br>
     <form name="myform" id="loginForm" action="addpatientsact.jsp" method="post"  onsubmit="return validateform()" >
               
                    
                    
           

            <table align="center">

            <tr><td>
                     <td><strong><font size="3" color="black">Patient Id:</font></strong></td>
                     <td><input type="text" name="pid"  placeholder=Id Name required style="height:30px; width:200px"> </input></td>
                </td>
            </tr>

            <tr><td>
                     <td><strong><font size="3" color="black">Patient Name:</font></strong></td>
                     <td><input type="text"  name="pname" placeholder= Name required style="height:30px; width:200px" />&nbsp;<span class="status"></span></td>
                 </td>
            </tr>
                
            <tr>
                <td>
                    <td><strong><font size="3" color="black">Blood Group: </font></strong></td>
                    <td> <input type="text" name="bgroup"  placeholder= Blood required style="height:30px; width:200px"></input></td>
                </td>
           </tr>

            <tr>
                    <td>
                        <td><strong><font size="3" color="black">Disease</font></strong></td>
                        <td><input type="text" name="disease"  placeholder= Disease required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="3" color="black">E-Mail</font></strong></td>
                        <td><input type="email" name="email" id="email"  placeholder=E-Mail required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="3" color="black">Mobile:</font></strong></td>
                        <td><input type="text" name="mobile" id="txtphoneno" onkeypress="return isNumber(event)" placeholder=Mobile required style="height:30px; width:200px"> </input><span id="numloc"></span></td>
                    </td>
                </tr>
               

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">City: </font></strong></td>
                        <td><input type="text" name="city" placeholder="City" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Dob: </font></strong></td>
                        <td><input type="date" name="dob" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

               <tr>
                    <td>
                        <td><strong><font size="3" color="black">Age: </font></strong></td>
                        <td><input type="text" name="age" placeholder="Age" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Address: </font></strong></td>
                        <td><input type="text" name="address" placeholder="Address" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Gender: </font></strong></td>
                        <td><select name="gender" placeholder="City" required style="height:30px; width:200px" >
                                <option value="">Select</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                
                            </select></td> 
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Zip Code: </font></strong></td>
                        <td><input type="text" name="zip" placeholder="Zip" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>
                
                 <tr>
                    <td>
                        <td><strong><font size="3" color="black">Year: </font></strong></td>
                        <td><input type="text" name="year" placeholder="Year" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>



                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td>
                        <td><input type="submit" value="Submit" style="height:50px; width:85px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                            <input type="reset" value="Reset" style="height:50px; width:80px" /></td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                       
                    </td>
                </tr>





            </table>
        </form>
                </br>
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
 
