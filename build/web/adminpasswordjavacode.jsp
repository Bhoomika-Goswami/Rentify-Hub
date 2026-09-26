<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page  import="java.sql.Connection" %>

<%
String adminId=request.getParameter("aid");
String opass=request.getParameter("opass");
String npass=request.getParameter("npass");
String cnpass=request.getParameter("cnpass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    PreparedStatement st = connection.prepareStatement("select * from AdminloginTable  where adminid=? and password=?");
    st.setString(1, adminId);
    st.setString(2, opass);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       if(npass.equals(cnpass))
       {
           PreparedStatement st1 = connection.prepareStatement("update AdminloginTable set password=? where adminid=?");
           st1.setString(1, npass);
           st1.setString(2,adminId );
           st1.executeUpdate();
           response.sendRedirect("admindashboard.jsp");
       }
       else
       {
           out.println("hey buddy!!!!!new password and confirm password are not same ");
       }
    }
    else
    {
       out.println("Invalid id/password");
    }
%>