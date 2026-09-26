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
            background-color:rgba(166,14,66,0.8);
            box-shadow: 5px 5px 5px black;
        }

        </style>
    <link href="style_1.css" rel="stylesheet">
       
    <body>
        <%@include file="admintop.jsp"%>
        <h2 style="text-align:right"><a href="home.jsp"  style="font-size:20px;color:white;text-transform: uppercase">logout</a></h2>
     <form action="adminpasswordjavacode.jsp">
    <table width='40%' class='formtheme1' cellspacing='20px' align='center' >
            <tr align="center">
                <td><h1>PASSWORD SETTINGS FORM</h1></td>
            </tr>
            <tr>
                <td>ID</td>
            </tr>
            <tr>
                <td><input type='text' name='aid'class='texttheme'></td>
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
