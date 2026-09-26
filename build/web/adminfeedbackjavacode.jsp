<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.ResultSet" %>


<%
  Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
             PreparedStatement st=connection.prepareStatement("select * from feedbacktable");
            ResultSet rs=st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            while(rs.next())
            {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            
            
}
 %>
 <table width="100%" class="formtheme1">
     <%for( int i=0;i<list1.size();i++)
     {%>
     <tr align="center">
    <td><%=list1.get(i)%></td>
    <td><%=list2.get(i)%></td>
    <td><%=list3.get(i)%></td>
    </tr><!-- comment -->        
     <%}%>
     
         
     
     
 </table>

    