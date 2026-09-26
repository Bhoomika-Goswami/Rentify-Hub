<html>
    <link href="style_1.css" rel="stylesheet"><!-- comment -->
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
            margin-left: 750px;
            margin-top:100px; 
            font-family: arial;
            font-size: 18px;
            background-color:rgba(124,24,44,0.8);
            box-shadow: 5px 5px 5px black;
        }
        
    </style>
    <body>
        <%@include file="admintop.jsp" %><!-- comment -->
        <h2 style="text-align:right"><a href="home.jsp"  style="font-size:20px;color:white;text-transform: uppercase">logout</a></h2>
    
        <form action="adminaddproductjavacode.jsp">
            <table width='40%' align="center" class="formtheme1" cellspacing='20px'>
                <tr align="center"><td><h1>Add Product</h1></td></tr>
                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="prodid" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="name" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Category</td>
                    <td><input type="text" name="cate" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="desc" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Cost</td>
                    <td><input type="number" name="cost" class="texttheme"></td>
                </tr>
                <tr align="center">
                    <td>
                        <input type="submit" class="btntheme" value="Add">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
