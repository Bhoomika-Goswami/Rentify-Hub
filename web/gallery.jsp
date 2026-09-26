<html>
    <style>
         .btntheme1{
            background-color:white;
            color: white;
            width: 100px;
            height:  30px;
            font-family: arial;
            font-size: 15px;
            text-transform: uppercase;
        }
        a{
            color: white;
            text-decoration: none;
        }
        
    </style>
    <link href="style1.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="studenttop.jsp" %><!-- comment -->
        <table>
            <tr><td><img src="images/iron.jpg" width="180px" height="180px"></td></tr>
            <tr align="center"><td>Iron</td></tr>
            <tr align="center">
                <td>
                    It is Used for Straightening Clothes
                </td>
            </tr>
            <tr align="center" class="btntheme1"><td><a href="order.jsp">ORDER</a></td></tr>
        
        </table>
    
        
    </body>
</html>
