<html>
    <style>
        .tabtheme2 
        {
       
            font-size:15px;
            text-transform: uppercase;
            font-family: arial;
            text-align: center;
            background-color:rgba(255,255,255,0.6);
            height: 60px;
            border-radius: 7px;
            margin-left: 400px;
         
            /*//box-shadow: 5px  5px  5px  black;*/
        }
        
    </style>
        
    <link href="style.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="admintop.jsp" %><!-- comment -->
        <table class="tabtheme2" width="15%">
            <tr align="center" class='tdtheme'><td><a href="viewproduct.jsp">View Product</a></td></tr>
            <tr align="center" class='tdtheme'><td><a href="deleteproduct.jsp">Delete Product</a></td></tr>
            <tr align="center" class='tdtheme'><td><a href="addproduct.jsp">Add Product</a></td></tr>
            <tr align="center" class='tdtheme'><td><a href="updateproduct.jsp">Update Product</a></td></tr>
            
            
            
        </table>
    </body>
</html>
