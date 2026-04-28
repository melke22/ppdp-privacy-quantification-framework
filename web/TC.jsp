
<%@page import="java.sql.PreparedStatement"%>
<%@page import="sources.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
          Connection con = null;
          int age = 0;
                                Statement st = null;
                                ResultSet rs = null;
                                Statement st1 = null;
                                ResultSet rs1 = null;
                                Statement st2 = null;
                                ResultSet rs2 = null;
                                Statement st3 = null;
                                ResultSet rs3 = null;
                                Statement st5 = null;
                                ResultSet rs5 = null;
                                String male = null;
                                String female = null;
                                String year = null;
                                String star = "***";
                                PreparedStatement pstm = null;
                                String groupid[] = new String[5];
                                groupid[0] = "1";
                                groupid[1] = "2";
                                String a = null; String b = null; 
                                String c,d,e,f,g,j,h,w,x,y,z=null;
                                int i = 0;
                                int val = 0;
                                String agge= null;  
                                con = databasecon.getconnection();
                                st1 = con.createStatement();
                                String query1="delete from tc"; 
				
				st1.executeUpdate(query1);
		   		//String msg="Record deleted successfully";
				
                                 
                               /* L- Diversity Starts */  
                                 
                                con = databasecon.getconnection();
                                    st = con.createStatement();
                                   rs = st.executeQuery("select * from ldiversity");
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
                w= rs.getString("age");
                x =rs.getString("address") ;
                y=  rs.getString("gender") ;
                z = rs.getString("zipcode");
                year = rs.getString("year");
                age = rs.getInt("age1");
              
               
      /* Zipcode convertion */    
      
      if(age>=20 && age<=40)
          
      {
        agge = "<=40"  ;
          
      }
      
      if(age>=40 )
          
      {
        agge = ">=40"  ;
          
      }
      
   String ab = z.substring(0,3);
   
   String abc = ab+star;
      System.out.println("concate"+abc);      
               
               
               
 /* End */
      
      
             st5 = con.createStatement();
                                   rs5 = st5.executeQuery("select * from location");  
                                   while(rs5.next()){
                                  
                                  if(g.indexOf(rs5.getString("location"))>= 0)
                                     { 
                                        
                                         val = rs5.getInt("value");
                                         
                                         
                                       
                                     }
                              }
              
              
               
    pstm = con.prepareStatement("insert into tc (pid,pname, blood, disease,email,mobile,city,dob,age,address,gender,zipcode,year,age1)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                        pstm.setString(1, star);
                        pstm.setString(2, star);
                        pstm.setString(3, c);
                        pstm.setString(4, d);
                        pstm.setString(5, star);
                        pstm.setString(6, star);
                        pstm.setInt(7, val);
                        pstm.setString(8, star);
                        pstm.setString(9, w);
                        pstm.setString(10, star);
                        pstm.setString(11, y);
                        pstm.setString(12, abc);
                        pstm.setString(13, year);
                         pstm.setString(14, agge);
                        
                        
                        
                                  
                                  
                                 
                                  
                                   i = pstm.executeUpdate();
                                 
                                pstm.close();
                                
                              }
                              
                              /* End */
                              
                              if (i == 1) {
                                    response.sendRedirect("tcc.jsp?msg=success");
                              }
                              
                         }
                         catch (Exception yy) {
                                 response.sendRedirect("msgg=failed");
                            }
      %>
   