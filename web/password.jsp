<html>
    <link href="style.css" rel="stylesheet">
       
    <body>
        <%@include file="studenttop.jsp"%>
     <form action="passwordjavacode.jsp">
    <table width='40%' class='formtheme' cellspacing='20px' align='center' >
            <tr align="center">
                <td><h1>PASSWORD SETTINGS FORM</h1></td>
            </tr>
            <tr>
                <td>ID</td>
            </tr>
            <tr>
                <td><input type='text' name='uid'class='texttheme'></td>
            </tr>
            <tr>
                <td>Old Password</td>
            </tr>
                <td><input type='password' name='opass' class='texttheme'></td>
            </tr>
            <tr>
            <tr>
                <td>New Password</td>
            </tr>
                <td><input type='password' name='npass' class='texttheme'></td>
            </tr>
            <tr>
            <tr>
                <td>Confirm New Password</td>
            </tr>
                <td><input type='password' name='cnpass' class='texttheme'></td>
            </tr>
            <tr align='center'>
                <td><input type='submit' value='submit' class='btntheme'></td>
            </tr>
        </table>
        </form>
    </body>
</html>
