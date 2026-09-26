<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>

<%
    
String fullName=request.getParameter("fnm");
int contact=Integer.parseInt(request.getParameter("cont"));
String query=request.getParameter("Query");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("Insert into contactTable values(?,?,?)");
    st.setString(1, fullName);
    st.setInt(2, contact);
    st.setString(3, query);
    st.executeUpdate();
    connection.close();
    response.sendRedirect("login.jsp");
%>