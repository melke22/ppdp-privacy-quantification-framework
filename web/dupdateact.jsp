
<%@page import="java.sql.PreparedStatement"%>
<%@page import="sources.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
          Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                 Statement st1 = null;
                                ResultSet rs1 = null;
                                 Statement st2 = null;
                                ResultSet rs2 = null;
                                 Statement st3 = null;
                                ResultSet rs3 = null;
                                String male = null;
                                String female = null;
                                String star = "***";
                                PreparedStatement pstm = null;
                                String groupid[] = new String[5];
                                groupid[0] = "1";
                                 groupid[1] = "2";
                                 String a = null; String b = null; 
                                 String c,d,e,f,g,j,h,w,x,y,z=null;
                                 int i = 0;
                                  String pid = request.getParameter("pid");  
                                   String status = request.getParameter("status");
                                con = databasecon.getconnection();
                                   
		   		
				
                                 
                               /* L- Diversity Starts */  
                                 
                                con = databasecon.getconnection();
                                    st = con.createStatement();
                                   rs = st.executeQuery("select * from patientdetails where pid ='"+pid+"'");
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
               
    pstm = con.prepareStatement("insert into patientstatus (pid,pname, blood, disease,email,mobile,city,dob,age,address,gender,zipcode,status)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

                        pstm.setString(1, a);
                        pstm.setString(2, b);
                        pstm.setString(3, c);
                        pstm.setString(4, d);
                        pstm.setString(5, e);
                        pstm.setString(6, f);
                        pstm.setString(7, g);
                        pstm.setString(8, h);
                        pstm.setString(9, w);
                        pstm.setString(10, x);
                        pstm.setString(11, y);
                        pstm.setString(12, z);
                        pstm.setString(13, status);
                        
                        
                        
                        
                                  
                               
                                  
                                   i = pstm.executeUpdate();
                                 
                                pstm.close();
                                
                              }
                              
                              /* End */
                              
                              if (i == 1) {
                                    response.sendRedirect("dviewpatients.jsp?msg=success");
                              }
                              
                         }
                         catch (Exception yy) {
                             response.sendRedirect("dviewpatients.jsp?msg=success");
                            }
      %>
   