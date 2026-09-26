<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.SQLException"%>
<%@page import ="java.sql.ResultSet"%>
<%
    String productId=request.getParameter("prodid");
     Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            PreparedStatement st=connection.prepareStatement("delete  from product where productid=?");
            st.setString(1,productId);
            st.executeUpdate();
            connection.close();
        response.sendRedirect("pmdeleteproduct.jsp");



%>

        
    </body>
</html>
