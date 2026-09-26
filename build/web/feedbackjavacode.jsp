<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>

<%  
String userId=request.getParameter("uid");
String fullName=request.getParameter("fnm");
String feedback=request.getParameter("feedback");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("Insert into FeedbackTable values(?,?,?)");
    st.setString(1, userId);
    st.setString(2, fullName);
    st.setString(3, feedback);
    st.executeUpdate();
    connection.close();
    response.sendRedirect("login.jsp");
%>