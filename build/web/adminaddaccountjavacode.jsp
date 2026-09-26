<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>



<%
    
     String empId=request.getParameter("empid");
     String pass=request.getParameter("pwd");
     String name=request.getParameter("name");
     String mail=request.getParameter("mailid");
     int contact=Integer.parseInt(request.getParameter("cont"));
     String gender=request.getParameter("gen");
     String dob=request.getParameter("dob");
     String address=request.getParameter("add");
     String city=request.getParameter("city");
     
     
     Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
             PreparedStatement st=connection.prepareStatement("insert into employeetable values (?,?,?,?,?,?,?,?,?)");
            st.setString(1,empId);
            st.setString(2,pass);
            st.setString(3,name);
            st.setString(4,mail);
             st.setInt(5,contact);
             st.setString(6,gender);
             st.setString(7,dob);
             st.setString(8,address);
             st.setString(9,city);
            st.executeUpdate();
            connection.close();
            response.sendRedirect("adminaddaccount.jsp");
        
%>

    