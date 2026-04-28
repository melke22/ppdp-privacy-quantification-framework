
<%@page import="java.sql.PreparedStatement"%>
<%@page import="sources.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
          Connection con = null;
          
          String age1 = null;
          int age= 0;
          String star1 = "*";
                                Statement st = null;
                                ResultSet rs = null;
                                 Statement st1 = null;
                                ResultSet rs1 = null;
                                 Statement st2 = null;
                                ResultSet rs2 = null;
                                 Statement st3 = null;
                                ResultSet rs3 = null;
                                String male = null;
                                String year = null;
                                String female = null;
                                String star = "***";
                                PreparedStatement pstm = null;
                                String groupid[] = new String[5];
                                groupid[0] = "1";
                                 groupid[1] = "2";
                                 String a = null; String b = null; 
                                 String c,d,e,f,g,j,h,w,x,y,z=null;
                                 int i = 0;
                                    
                                con = databasecon.getconnection();
                                    st1 = con.createStatement();
                                 String query1="delete from anonypatient"; 
				
				st1.executeUpdate(query1);
		   		String msg="Record deleted successfully";
				
                                 
                               /* K- Anon Starts */  
                                 
                                con = databasecon.getconnection();
                                    st = con.createStatement();
                                   rs = st.executeQuery("select * from patientdetails");
                         try {           
                              while(rs.next())
                              {
                                  
                a =rs.getString("pid");
                b= rs.getString("pname");
                c = rs.getString("blood");
                d = rs.getString("disease");
                e = rs.getString("email");
                f = rs.getString("mobile");
                g= rs.getString("city");
                h =rs.getString("dob");
               age = Integer.parseInt(rs.getString("age"));
                x =rs.getString("address") ;
               y=  rs.getString("gender") ;
              z = rs.getString("zipcode");
              year = rs.getString("year");
              
              
              
        if(age>10 && age<=20){
        
        
        age1 = "10--20";
        
        }
        
        
        if(age>20 && age<=30){
        
        
        age1 = "20--30";
        
        }
             
        if(age>30 && age<=40){
        
        
        age1 = "30--40";
        
        }
        
        
        if(age>40 && age<=50){
        
        
        age1 = "40--50";
        
        }
        
         if(age>50 && age<=60){
        
        
        age1 = "50--60";
        
        }
         
          if(age>60 && age<=70){
        
        
        age1 = "60--70";
        
        }
          
           if(age>70 && age<=80){
        
        
        age1 = "70--80";
        
        }
           
            if(age>80 && age<=90){
        
        
        age1 = "80--90";
        
        }
            
             if(age>90 && age<=100){
        
        
        age1 = "90--100";
        
        }
        
        
      String s=String.valueOf(age);  
      
      
      
   char ab = s.charAt(0);
   
   String abc = ab+star1;
      System.out.println("concate"+abc);
               
    pstm = con.prepareStatement("insert into anonypatient (pid,pname, blood, disease,email,mobile,city,dob,age,address,gender,zipcode,year,age1)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                        pstm.setString(1, a);
                        pstm.setString(2, star);
                        pstm.setString(3, c);
                        pstm.setString(4, d);
                        pstm.setString(5, star);
                        pstm.setString(6, star);
                        pstm.setString(7, g);
                        pstm.setString(8, star);
                        pstm.setString(9, abc);
                        pstm.setString(10, star);
                        pstm.setString(11, y);
                        pstm.setString(12, z);
                        pstm.setString(13, year);
                        pstm.setInt(14, age);
                        
                        
                        
                                  
                                 
                                  
                                   i = pstm.executeUpdate();
                                 
                                pstm.close();
                                
                              }
                              
                              /* End */
                              
                              if (i == 1) {
                                    response.sendRedirect("groupid.jsp?msg=success");
                              }
                              
                         }
                         catch (Exception yy) {
                                 response.sendRedirect("msgg=failed");
                            }
      %>
   