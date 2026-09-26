<html>
    <link href="style.css" rel="stylesheet">
    <style>
        .formtheme1
        {
            margin-top:155; 
            font-family: arial;
            font-size: 18px;
            background-color:rgba(166, 125, 95,0.9);
            box-shadow: 5px 5px 5px black;
        }
        
        </style>
    <body>
        <%@include file="complainmanagertop.jsp" %>
        <table width="100%" class="formtheme1" align="center">
            <tr align="center"><td><h2>Complain</h2></td></tr>
        <tr>
        <td>full name</td>
        <td>Complain ID</td>
        <td>Complain</td>
        <td>Date of Complain</td>
        <td>Status</td>
        </tr>
        </table>
       <%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.ResultSet" %>


<%
  Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
             PreparedStatement st=connection.prepareStatement("select * from complaintable");
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
 <table width="100%" class="formtheme1" align="center">
     <%for( int i=0;i<list1.size();i++)
     {%>
     <tr align="center">
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