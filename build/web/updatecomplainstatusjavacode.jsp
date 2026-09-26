<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    String complainId=request.getParameter("compid");
    String status=request.getParameter("status");
    Class.forName("com.mysql.jdbc.Driver");
            
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            
            PreparedStatement st =connection.prepareStatement("update complain set status=? where complainid=?");
         
        st.setString(1,complainId);
        st.setString(2,status);
        st.executeUpdate();
        response.sendRedirect("updatecomplainstatus.jsp");
      
%>

    