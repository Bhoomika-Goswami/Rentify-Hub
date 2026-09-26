<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    String prodManId=request.getParameter("pmid");
    String oldPassword=request.getParameter("opwd");
    String newPassword=request.getParameter("npwd");
    String confirmPassword=request.getParameter("cnpwd");
     Class.forName("com.mysql.jdbc.Driver");
            
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            
            PreparedStatement st =connection.prepareStatement("select * from EmployeeTable where productid=? and password=?");
         
        st.setString(1,prodManId);
        st.setString(2,oldPassword);
        ResultSet rs=st.executeQuery();
if(rs.next())
    {
        if(newPassword.equals(confirmPassword))
        {
        PreparedStatement st1=connection.prepareStatement("update employeetable set password=? where productid=?");
        st1.setString(1, newPassword);
        st1.setString(2,prodManId);
        st1.executeUpdate();
        response.sendRedirect("complainmanagerdashboard.jsp");
        }
        else
        {
          out.println("New Password And confirm New Password are not Same ");
        }
}

else
        {
        out.print("Userid or Password is Incorrect");
        }
            
        
%>

    