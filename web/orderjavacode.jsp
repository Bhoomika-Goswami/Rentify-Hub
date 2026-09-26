<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>

<%
    
String userId=request.getParameter("uid");
String productName=request.getParameter("pwd");
String address=request.getParameter("fnm");
String  city=request.getParameter("city");
String contact=request.getParameter("cont");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("Insert into OrderTable values(?,?,?,?,?)");
    st.setString(1, userId);
    st.setString(2, productName);
    st.setString(3, address);
    st.setString(4, city);
    st.setString(5, contact);
    
    st.executeUpdate();
    connection.close();
    response.sendRedirect("login.jsp");
%>