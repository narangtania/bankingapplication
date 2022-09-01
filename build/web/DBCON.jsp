<%@page import="java.sql.*;"%>


<html>
    
    <body>
        <%!Connection con;%>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            String connectionURL = "jdbc:mysql://localhost:3306/SopraSteriabanking";
            String DBUSER = "root";
            String DBPASS = "root";
            con = DriverManager.getConnection(connectionURL, DBUSER, DBPASS);
            out.println("Connection Success....");
            java.util.Random rn = new java.util.Random();
            out.println(rn.nextInt());
            }
            catch(Exception e){
                out.println("Connection failed...." + e);
            }
        %>
    </body>
</html>
