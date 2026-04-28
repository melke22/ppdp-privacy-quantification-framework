<%@page import="java.sql.*"%>
<%@page import="sources.databasecon"%>
<%@ page session="true" %>
<%
    String disease = request.getParameter("disease");
  
    int yf = Integer.parseInt(request.getParameter("yf"));
    int yt = Integer.parseInt(request.getParameter("yt"));
   // String yt = request.getParameter("yt");
    
    String male=null;
    String female=null;
    int i =0;
    int j= 0;
    int count = 0;
    int x =0;
    Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();
         Statement st11 = con.createStatement();
        
      int a = 0;
      int b =0;
        int totalcount =0;
        int gendermale=0;
        int genderfemale=0;
    try{
        
           st11 = con.createStatement();
           String query11="delete from checking"; 
           st1.executeUpdate(query11);
           
        PreparedStatement pst11=con.prepareStatement("select distinct city,disease from ldiversity where disease = '"+disease+"' and  year between "+yf+" and "+yt+" ");
       
      ResultSet rs11=pst11.executeQuery();
        
       
       while(rs11.next()) 
       {
            PreparedStatement pst12=con.prepareStatement("select * from ldiversity where city = "+rs11.getInt("city")+" and disease = '"+rs11.getString("disease")+"' ");
       
      ResultSet rs12=pst12.executeQuery();
        
       
       while(rs12.next()) 
       {
       //  a = rs12.getInt("age");
        // b = rs12.getInt("age2");
           
           
          totalcount =  totalcount+1;
          
          if(rs12.getString("gender").equals("Male"))
          {
              gendermale = gendermale+1;
          }
          else
          {
              genderfemale=genderfemale+1;
          }
       }
PreparedStatement ps = con.prepareStatement("insert into checking values(?,?,?,?,?)");

ps.setString(1,rs11.getString("city"));
ps.setInt(2,gendermale);
ps.setInt(3,genderfemale);
ps.setString(4,rs11.getString("disease"));
ps.setInt(5,totalcount);



ps.executeUpdate();
       
       
       System.out.println("Location =====" +rs11.getInt("city")  );
       System.out.println("Disease ======"+rs11.getString("disease"));
       System.out.println("count ======"+totalcount);
       System.out.println("male count ===="+gendermale);
       System.out.println("female count ===="+genderfemale);
       //insert location = rs11.getInt("city") , disease = rs11.getString("disease"), count = totalcount; male = gendermale;female = genderfemale;
       
       totalcount=0;
       gendermale=0;
       genderfemale=0;
       }
     
}
    catch(Exception e)
    {
        System.out.println("Error in adminact"+e.getMessage());
    }


%>


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
 
    
        
try{ 
	
	    
	PreparedStatement pst=con.prepareStatement("select * from checking ");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <table style="width:80%" border="5">
         
  <tr>
    
    <th><font color="red" size="3">Location</font></th>
    <th><font color="red" size="3">Male</font> </th>
    <th><font color="red" size="3">Female</font></th>
    <th><font color="red" size="3">Disease</font></th>
    <th><font color="red" size="3">Count</font></th>
       
 </tr>

<%
       
	while(rs.next()){
            %><tr><th><font color="black" size="2"><%=rs.getString("location")%></font></th>
                <th><font color="black" size="2"><%=rs.getString("male")%></font></th>
                <th><font color="black" size="2"><%=rs.getString("female")%></font></th>                
                <th><font color="black" size="2"><%=rs.getString("disease")%></font></th>
                <th><font color="black" size="2"><%=rs.getString("cont")%></font></th>
                
               
                
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
 
