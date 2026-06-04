          <%@page import="java.net.InetAddress"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
	
<%
 String uid=request.getParameter("userid");
String tn=request.getParameter("pass");
InetAddress IP=InetAddress.getLocalHost();
System.out.println("IP of my system is := "+IP.getHostAddress());
    String  strQuery222 = "insert into requests(user,utopic,status,ip) values('"+uid+"','"+tn+"','REQUEST','"+IP.getHostAddress()+"')";
int result=connection.createStatement().executeUpdate(strQuery222);
response.sendRedirect("u_search_webpage.jsp?message=success");
%>