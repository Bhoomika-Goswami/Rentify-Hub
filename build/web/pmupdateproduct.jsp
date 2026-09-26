  <html>
    <link href="style.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="productmanagertop.jsp" %><!-- comment -->
        <form action="pmupdateproductjavacode.jsp">
        <table align="center" class="formtheme">
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
