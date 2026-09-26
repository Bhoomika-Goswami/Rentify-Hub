<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>

<%
    String Id=request.getParameter("uid");
    String pwd=request.getParameter("pwd");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("select * from UserTable where userid=? and password=?");
    st.setString(1, Id);
    st.setString(2, pwd);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       response.sendRedirect("studentdashboard.jsp");
    }
    else
    {
       out.println("invalid id/password");
    }
%>