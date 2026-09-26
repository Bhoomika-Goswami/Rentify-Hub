<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page  import="java.sql.Connection" %>
<%@page  import="java.util.Date" %>

<%
String userId=request.getParameter("uid");
String pass=request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("select * from UserTable  where userid=? and password=?");
    st.setString(1, userId);
    st.setString(2, pass);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
        PreparedStatement st1 = connection.prepareStatement("delete from UserTable where userid=? and password=?");
        st1.setString(1, userId);
        st1.setString(2, pass );
        st1.executeUpdate();
        response.sendRedirect("home.jsp");
    }
    else
    {
       out.println("Invalid id/password");
    }
%>