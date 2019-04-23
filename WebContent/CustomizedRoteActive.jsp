<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car pooling</title>
</head>
<body>

    <%@  page  import="java.sql.*"  %>
			<%
      			String id=request.getParameter("id");
			String name="", city="",firstpoint="",email="",secondpoint="", thirdpoint="", date="",time="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
            		String query="select * from offersride";

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			id=rs.getString("id");
            			
            			
             		}
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        	   }
     		catch(Exception e)
        	{
          	System.out.println(e);
        	}
			%>
  
	<!--student activation permissiom check condition -->
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/cabshearingsystem"
                           user="root"  password="root"/>
                           
	<sql:update dataSource="${dbsource}" var="count">
            UPDATE cutomizedroute SET status=1
            WHERE id ='${param.id}' 
    </sql:update>
    
	<c:if test="${count>=1}">
           	<%        
           	RequestDispatcher dispatcher =request.getRequestDispatcher("CarOwnerViewCustomizedRoute.jsp?na=tusharwalunj1505@gmail.com");
            dispatcher.forward(request,response);
            %>     
    </c:if>
    
</body>
</html>