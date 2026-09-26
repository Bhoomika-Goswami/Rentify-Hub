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
            background-color:rgba(210,170,46,0.8);
            box-shadow: 5px 5px 5px black;
        }

        </style>
    
    <link href="style_1.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="admintop.jsp" %><!-- comment -->
        <h2 style="text-align:right"><a href="home.jsp"  style="font-size:20px;color:white;text-transform: uppercase">logout</a></h2>
    
        <form action="deleteproductjavacode.jsp">
            <table class="formtheme1" align="center">
                <tr align="center">
                    <td><h1>Delete Product</h1></td>
                </tr>
                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="prodid"></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="delete" class="btntheme">
                    </td>
                </tr>
                </table>
            </form>
    </body>
</html>
