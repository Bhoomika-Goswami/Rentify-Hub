<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>

<%
    String aid=request.getParameter("aid");
    String apa=request.getParameter("apwd");
    String apo=request.getParameter("post");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    if(apo.equals("Admin"))
    {
    PreparedStatement st = connection.prepareStatement("select * from AdminloginTable where adminid=? and password=?");
    st.setString(1, aid);
    st.setString(2, apa);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       response.sendRedirect("admindashboard.jsp");
    }
    else
    {
       out.println("invalid id/password");
    }
    }
    
    if(apo.equals("Product Manager"))
    {
    PreparedStatement st = connection.prepareStatement("select * from EmployeeTable where employeeid=? and password=?");
    st.setString(1, aid);
    st.setString(2, apa);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       response.sendRedirect("productmanagerdashboard.jsp");
    }
    else
    {
       out.println("invalid id/password");
    }
    }
    if(apo.equals("Complain Manager"))
    {
    PreparedStatement st = connection.prepareStatement("select * from EmployeeTable where employeeid=? and password=?");
    st.setString(1, aid);
    st.setString(2, apa);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       response.sendRedirect("complainmanagerdashboard.jsp");
    }
    else
    {
       out.println("invalid id/password");
    }
    }
    
%>