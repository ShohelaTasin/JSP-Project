<%@page import="java.sql.*" %> 


<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
        pst = con.prepareStatement("delete from register.student where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deleted");
            
       </script>