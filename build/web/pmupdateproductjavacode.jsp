<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    String productId=request.getParameter("prodid");
    int cost=Integer.parseInt(request.getParameter("cost"));
    Class.forName("com.mysql.jdbc.Driver");
            
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            
            PreparedStatement st =connection.prepareStatement("update product set cost=? where productid=?");
         
        st.setInt(1,cost);
        st.setString(2,productId);
        st.executeUpdate();
        response.sendRedirect("pmupdateproduct.jsp");
      
%>

    