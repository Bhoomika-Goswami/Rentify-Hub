        
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection,java.sql.ResultSet" %>
<%@page  import="java.util.ArrayList"%>
                   
<%
Class.forName("com.mysql.jdbc.Driver");
Connection connection=DriverManager.
getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
PreparedStatement st=
connection.prepareStatement("select * from  complaintable");
ResultSet rs=st.executeQuery();
ArrayList  list1=new ArrayList();
ArrayList  list2=new ArrayList();
ArrayList  list3=new ArrayList();
ArrayList  list4=new ArrayList();
ArrayList  list5=new ArrayList();
//ArrayList  list6=new ArrayList();
while(rs.next())
        {
         list1.add(rs.getString(1));   
         list2.add(rs.getString(2));   
         list3.add(rs.getString(3));   
         list4.add(rs.getString(4));   
         list5.add(rs.getString(5));   
        // list6.add(rs.getString(6));   
        }

%>

<table  width="100%"  class="tabtheme"  style="background-color:rgba(255,255,255,0.7)">
            
            <%for(int i=0;i<list1.size();i++)
            {%>
            <tr align="center">
                <td><%=list1.get(i)%></td>
                <td><%=list2.get(i)%></td>
                <td><%=list3.get(i)%></td>
                <td><%=list4.get(i)%></td>
                <td><%=list5.get(i)%></td>
               
            </tr>
            <%}%>
        </table>