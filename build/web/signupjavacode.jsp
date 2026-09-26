<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>

<%
String userId=request.getParameter("uid");
String password=request.getParameter("pwd");
String fullName=request.getParameter("fnm");
int contact=Integer.parseInt(request.getParameter("cont"));
String  city=request.getParameter("city");
String dateOfBirth=request.getParameter("dateOfBirth");
String gender=request.getParameter("Gender");
String mailId=request.getParameter("mail");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("Insert into UserTable values(?,?,?,?,?,?,?,?)");
    st.setString(1, userId);
    st.setString(2, password);
    st.setString(3, fullName);
    st.setInt(4, contact);
    st.setString(5, city);
    st.setString(6, dateOfBirth);
    st.setString(7, gender);
    st.setString(8, mailId);
    st.executeUpdate();
    connection.close();
    response.sendRedirect("login.jsp");
%>