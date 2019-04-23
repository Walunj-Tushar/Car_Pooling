<%@  page  import="java.sql.*"  %>

<%
   String id=request.getParameter("id");

     Connection con=null;
      try
        {
    	  Class.forName("com.mysql.jdbc.Driver");
  		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
  		String query="Delete from registercar where id=" + id;

            Statement stmt=con.createStatement();
            stmt.executeUpdate(query);

            stmt.close(); 
            con.close(); 
        }
     catch(Exception e)
        {
          System.out.println(e);
        }
%>
<script>
    alert("Record deleted successfully...");   
    document.location.href="AdminHome.jsp?na=admin@gmail.com";
</script>
