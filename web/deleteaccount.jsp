<html>
    <link href="style.css" rel="stylesheet">
    <style>
        .formtheme1
        {
            margin-left: 750px;
            margin-top:100px; 
            font-family: arial;
            font-size: 18px;
            background-color:rgba(212,222,244,0.9);
            box-shadow: 5px 5px 5px black;
        }
        
    </style>
    <body>
        <%@include file="admindashboard.jsp"%>
     <form action="deleteaccountjavacode.jsp">
    <table width='40%' class='formtheme1' cellspacing='20px' align='center' >
            <tr align="center">
                <td><h1>DELETE ACCOUNT FORM</h1></td>
            </tr>
            <tr>
                <td>ID</td>
            </tr>
            <tr>
                <td><input type='text' name='uid'class='texttheme'></td>
            </tr>
            <tr>
                <td>Password</td>
            </tr>
                <td><input type='password' name='pwd' class='texttheme'></td>
            </tr>
            <tr align='center'>
                <td><input type='submit' value='delete' class='btntheme'></td>
            </tr>
        </table>
        </form>
    </body>
</html>
