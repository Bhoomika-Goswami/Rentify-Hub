  <html>
    <link href="style.css" rel="stylesheet"><!-- comment -->
    <body>
        <%@include file="complainmanagertop.jsp" %><!-- comment -->
        <form action="changecomplainstatusjavacode.jsp">
        <table align="center" class="formtheme">
            <tr><td><h2>CHANGE COMPLAIN STATUS</h2></td></tr>
            <tr><td>Complain Id</td></tr>
            <tr><td><input type="text" class="textheme" name="compid"</td></tr>
            <tr><td>Complain Status</td></tr>
            <tr><td><select class="textheme" name="status">
                            <option>solved</option>
                            <option>pending</option>
                </select></td></tr>
                <td><input type="submit" class="btntheme" value="Change"></td>
            
        </table>
            </form>
    </body>
</html>
