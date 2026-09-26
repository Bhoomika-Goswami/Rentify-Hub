<html>
    <style>
    .tabtheme1{
            height: 150px;
            width:150px;
            font-size:15px;
            text-align: center;
            font-family: arial;
            box-shadow: 20px 20px 18px white;
            border:outset;
            
        }
                .formtheme1
        {
            margin-left: 650px;
            font-family: arial;
            font-size: 18px;
            background-color:rgba(112,124,41,0.8);
            box-shadow: 5px 5px 5px black;
        }

        </style>
        <link href="style_1.css" rel="stylesheet">
    
   <body>
        <%@include file="admintop.jsp" %>
        <h2 style="text-align:right"><a href="home.jsp"  style="font-size:20px;color:white;text-transform: uppercase">logout</a></h2>
    
        <form action="updatecomplainstatusjavacode.jsp">
        <table align="center" class="formtheme1">
            <tr><td><h2>UPDATE COMPLAIN STATUS</h2></td></tr>
            <tr><td>Complain Id</td></tr>
            <tr><td><input type="text" class="textheme" name="compid"</td></tr>
            <tr><td>Complain Status</td></tr>
            <tr><td><select class="textheme" name="status">
                            <option>solved</option>
                            <option>pending</option>
                </select></td></tr>
                <td><input type="submit" class="btntheme" vlaue="Change"></td>
            
        </table>
            </form>
    
 
   
        
    </body>
</html>
