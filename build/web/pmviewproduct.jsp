<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.ResultSet" %>
<html>
    <style>
          .formtheme2{
            /*margin-left: 500px;*/
            font-family: arial;
            font-size: 16px;
            background-color:rgba(255,255,255,0.4);
            /*box-shadow: 5px  5px  5px  black;*/
        }
    </style>
    <link href="style.css" rel="stylesheet">
    <body>
        <%@include file="productmanagertop.jsp" %>
        <table width="100%" class="formtheme2">
            <tr align="center"><td><h2>Product</h2></td></tr>
        <tr>
        <td>Product ID</td>
        <td>Product Name</td>
        <td>Category</td>
        <td>Description</td>
        <td>Cost</td>
        </tr>
        </table>
    

<%
  Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
             PreparedStatement st=connection.prepareStatement("select * from product");
            ResultSet rs=st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
            while(rs.next())
            {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            
            
}
 %>
 <table width="100%" class="formtheme2" >
     <%for( int i=0;i<list1.size();i++)
     {%>
     <tr >
    <td><%=list1.get(i)%></td>
    <td><%=list2.get(i)%></td>
    <td><%=list3.get(i)%></td>
    <td><%=list4.get(i)%></td>
    <td><%=list5.get(i)%></td>
     </tr><!-- comment -->        
     <%}%>
     
         
     
     
 </table>
            
    
        
      
    </body>
</html>