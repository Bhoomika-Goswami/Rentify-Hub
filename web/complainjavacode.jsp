<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement,java.util.Date" %>
<%@page  import="java.sql.Connection" %>

<%
    
String fullName=request.getParameter("fnm");
String complain=request.getParameter("comp");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("Insert into ComplainTable(fullname,complain,dateOfComplain,status) values(?,?,?,?)");
    st.setString(1, fullName);
    st.setString(2, complain);
    st.setString(3, ""+new Date());
    st.setString(4, "pending");
    st.executeUpdate();
    connection.close();
    response.sendRedirect("login.jsp");
%>