<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>



<%
    
     String productId=request.getParameter("prodid");
     String productName=request.getParameter("name");
     String category=request.getParameter("cate");
     String description=request.getParameter("desc");
     int cost=Integer.parseInt(request.getParameter("cost"));
    
    
     
        Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
             PreparedStatement st=connection.prepareStatement("insert into product values (?,?,?,?,?)");
            st.setString(1,productId);
            st.setString(2,productName);
            st.setString(3,category);
            st.setString(4,description);
             st.setInt(5,cost);
            st.executeUpdate();
            connection.close();
            response.sendRedirect("adminaddproduct.jsp");
        
%>

    