<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 30px}
.style2 {
	font-size: 24px;
	color: #d86d5a;
}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style8 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style9 {font-style: italic}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="u_login.jsp"><span>User</span></a></li>
          <li><a href="attacker.jsp"><span>Attacker</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Detecting Mobile Malicious<br /> Webpages in Real Time</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
         
            <h1 align="center" class="style2">VIEW ALL USER REQUESTS</h1>
        
<table width="623" border="1" align="center"  cellpadding="0" cellspacing="0">
        <tr>
          <td  width="40"  align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style5 style25 style14 style15 style16 style7 style10 style6">Id</div></td>
          <td  width="126"  align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style5 style25 style14 style15 style16 style7 style10 style6">User Name</div></td>
          <td  width="194"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style25 style5 style14 style15 style16 style7 style10 style6">Requested Topic Name </div></td>
		  <td  width="140" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style25 style5 style14 style15 style16 style7 style10 style6">IP Address </div></td>
		 	 
        </tr>
		
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
        <%
					    
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
								
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select * from requests where status='REQUEST'";
								ResultSet rs1 = stmt1.executeQuery(strQuery1);
												
								
					   			while ( rs1.next() )
								{
										
										s2=rs1.getString(1);//rfrom
										s3=rs1.getString(2);
										s4=rs1.getString(3);//tn
										s5=rs1.getString(5);


					%><p>&nbsp; </p>
        <tr>
              
          <td  align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">
                <%out.println(s2);%>
              
              </div></td>
          
			
          <td  align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">
                <%out.println(s3);%>
               
              </div></td>  
		  
	
		  
		  <td  align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">
                <%out.println(s4);%>
               
              </div></td>
		  <td  align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">
		  <%out.println(s5);%>
            
              </div></td>
                	
        </tr>
        
		<%
                
				                
				i=i+1;

						}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
  </table>		  

		  <p>&nbsp;</p>
		  <p align="right"><a href="a_main.jsp">Back</a></p>
            
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li> 
              <div align="center" class="style6"> 
                <div align="left"><span class="style7"><span class="style9"><a href="a_all_users.jsp">View All Users and Authorise</a></span></span></div>
              </div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_add_topic.jsp">Add Topics</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_all_topics.jsp">List All Topics</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_limit_wb.jsp">Set and View Limit </a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_list_mal_webpages.jsp">List All Malacious WebPages</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_user_viewed_mal.jsp">List All Malacious WebPage Accessed Users</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_blocked_user.jsp">List All Blocked Users</a></div>
            </li>
              
                 <li class="style8">
              <div align="left"><a href="userrequests.jsp">User Topic Requests</a></div>
            </li>
              
            <li class="style8">
              <div align="left"><a href="a_unblock_user.jsp">User Requests to Unblock</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_rec_webpages.jsp">View All Recommended WebPages</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_wb_viewed.jsp">View All WebPages Viewed</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_mal_viewed.jsp">View Malacious Web Page Access <br />
                in Chart</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_topics_rank.jsp">View Topic Ranks in Chart</a></div>
            </li>
            <li class="style8">
              <div align="left"><a href="a_b_nb_users.jsp">View No.Of Blocked and Un-Blocked Users in Chart</a></div>
            </li>
            <li>
              <div align="left"><span class="style8"><a href="a_login.jsp">Log Out</a></span></div>
            </li>
            <li></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
