<%@  page  import="java.sql.*"  %>

<%
   String id=request.getParameter("id");

     Connection con=null;
      try
        {
    	  Class.forName("com.mysql.jdbc.Driver");
  		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
  		String query="Delete from offersride where id=" + id;

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
    document.location.href="OfferRidesDetails.jsp?na=tusharwalunj1505@gmail.com";
</script>
