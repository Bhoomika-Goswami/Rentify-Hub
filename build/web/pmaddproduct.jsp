<html>
    <link href="style.css" rel="stylesheet"><!-- comment -->
    
    <body>
        <%@include file="productmanagertop.jsp" %><!-- comment -->
        <form action="productmanagerjavacode.jsp">
            <table align="center" class="formtheme">
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
