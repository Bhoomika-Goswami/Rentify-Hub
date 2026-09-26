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
        
        <table width="100%   " class="formtheme2">
            <tr align="center"><td><h2>Products</h2></td></tr>
        <tr>
        <td>Product ID</td>
        <td>Product Name</td>
        <td>Category</td>
        <td>Description</td>
        <td>Cost</td>
        </tr>
        </table>
        <table  width="100%" style="height:200px" class="tabtheme"  align="left">
            <tr>
                <td class="tabtheme1" style="background-color:rgba(12,14,166,0.8);"><a href="admindashboard.jsp"  style="color:white">home</a></td>
                <td class="tabtheme1" style="background-color:rgba(166,14,66,0.8);"><a href="adminpassword.jsp" style="color:white">settings</a></td>
                <td class="tabtheme1" style="background-color:rgba(12,224,44,0.8);"><a href="viewcomplain.jsp" style="color:white">view complain</a></td>
                </tr>
                <tr>
                <td class="tabtheme1"  style="background-color:rgba(112,124,41,0.8);"><a href="admincomplain.jsp" style="color:white" >Update Complain Status</a></td>
                <td class="tabtheme1"  style="background-color:rgba(17,156,210,0.8);"><a href="viewproduct.jsp" style="color:white">view product</a></td>
                <td class="tabtheme1"  style="background-color:rgba(210,170,46,0.8);"><a href="deleteproduct.jsp" style="color:white">delete product</a></td>
                </tr>
                <tr>
                <td class="tabtheme1"  style="background-color:rgba(222,224,244,0.8);"><a href="updateproduct.jsp">update product</a></td>
                <td class="tabtheme1"  style="background-color:rgba(112,124,144,0.8);"><a href="addproduct.jsp" style="color:white">Add Product</a></td>
              <!--  <td class="tabtheme1"  style="background-color:rgba(10,184,244,0.8);"><a href="rentedproduct.jsp">rented product</a></td>-->
               <!-- <td class="tabtheme1"  style="background-color:rgba(12,224,44,0.8);"><a href="registereduser.jsp" style="color:white">Registered user detail</a></td>-->

                           <!--    <td class="tabtheme1"  style="background-color:rgba(124,24,44,0.8);"><a href="employeeaccount.jsp" style="color:white">create employee account</a></td>-->
                <td class="tabtheme1"  style="background-color:rgba(10,184,244,0.8);"><a href="adminfeedback.jsp">Feedback</a></td>
                </tr>
                <tr>
                <td class="tabtheme1"  style="background-color:rgba(12,224,44,0.8);"><a href="deleteaccount.jsp">delete account</a></td>
                
                <td class="tabtheme1"  style="background-color:rgba(124,24,44,0.8);"><a href="addaccount.jsp">Add account</a></td>
                
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