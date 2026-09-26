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
            height: 250px;
            width: 400px ;
            margin-left: 650px;
            font-family: arial;
            font-size: 18px;
            background-color:rgba(222,224,244,0.8);
            box-shadow: 5px 5px 5px black;
        }

        </style>
    
    <link href="style_1.css" rel="stylesheet">
    <body>
        <%@include file="admintop.jsp" %>
        <form action="updateproductjavacode.jsp">
        <table align="center" class="formtheme1">
            <tr><td><h2>UPDATE PRODUCT</h2></td></tr>
            <tr><td>Product Id</td></tr>
            <tr><td><input type="text" class="textheme" name="prodid"</td></tr>
            <tr><td>Cost</td></tr>
            <tr><td><input type="number" class="textheme" name="cost"</td></tr>
                <td><input type="submit" class="btntheme" value="Update"></td>
            
        </table>
            </form>
    </body>
</html>
