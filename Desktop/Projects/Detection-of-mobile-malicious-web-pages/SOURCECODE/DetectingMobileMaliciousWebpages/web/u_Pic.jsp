<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	
  	try{  
	     
		int id = Integer.parseInt(request.getParameter("id"));
		Statement st=connection.createStatement();
    	//String strQuery = "select image from user where id="+id+"" ;
        
    	PreparedStatement ps=connection.prepareStatement("select image from user where id=?");
    	ps.setInt(1, id);
    	ResultSet rs = ps.executeQuery();
    	Blob image = null;
                        byte[ ] imgData = null ;
    	if (rs.next()) 
                        {
                             image = rs.getBlob(1);
                             imgData = image.getBytes(1,(int)image.length());
                         } 
                        // display the image
                        response.setContentType("image/jpg");
                        OutputStream o = response.getOutputStream();
                        o.write(imgData);
                        o.flush();
                        o.close();

		
		
		
		
			
			
		
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>