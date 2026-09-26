<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.SQLException"%>
<%@page import ="java.sql.ResultSet"%>
<%
    String userId=request.getParameter("uid");
    String password=request.getParameter("pass");
     Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            PreparedStatement st=connection.prepareStatement("select * from usertable where userid=? and password=?");
            st.setString(1,userId);
            st.setString(2,password);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
            PreparedStatement st1=connection.prepareStatement("delete  from usertable where userid=? and password=?");
            st1.setString(1,userId);
            st1.setString(2,password);
            st1.executeUpdate();
            response.sendRedirect("admindashboard.jsp");
            
}
            else
            {
            out.println("Invalid UserName/Password");
}
            connection.close();
        response.sendRedirect("admindashboard.jsp");



%>

        
    </body>
</html>
