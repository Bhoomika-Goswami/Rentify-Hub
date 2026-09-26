<html>
    <link href="style.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="productmanagertop.jsp" %><!-- comment -->
        <form action="pmdeleteproductjavacode.jsp">
            <table class="formtheme" align="center">
                <tr align="center">
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
