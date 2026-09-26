<html>
    <style>
        body
        {
            background-image:url('images/dark-gradient-905-x-1280-gd51xw00520tcqbb.jpg');
                background-repeat: no-repeat;
                background-size:100%;
        }
        
.formtheme
        {
            margin-left: 400px;
            margin-top:155; 
            font-family: arial;
            font-size: 18px;
            background-color:rgba(255, 255, 255,0.3);
            box-shadow: 5px 5px 5px black;
        }
        
        .texttheme
        {
            width: 270px;
            height: 30px;
            border:inset;
            <!--border-radius:30px-->
            /* box-shadow:1px 1px 1px black*/
        }
        .btntheme
        {
            background-color:black;
            color:white;
            width:100px;
            height: 30px;
            font-family: arial;
            font-size:15px;
            text-transform: uppercase; 
        }
               
    </style>
       
    <body>
        
    <form action="authloginjavacode.jsp">
    <table width='40%' class='formtheme' cellspacing='20px' align='center'>
        <tr align="center">
                <td><h1>AUTHORIZED LOGIN FORM</h1></td>
            </tr>
            <tr align="center">
                <td>ID</td>
            </tr>
            <tr align="center">
                <td><input type='text' name='aid' class='texttheme'></td>
            </tr>
            <tr align="center">
                <td>Password</td>
            </tr>
            <tr align="center">
                <td><input type='password' name='apwd' class='texttheme'></td>
            </tr>
            <tr align="center">
                <td><select class="texttheme" name="post">
                        <option>select user</option>
                        <option>Admin</option>
                        <option>Product Manager</option>
                        <option>Complain Manager</option>
                    </select></td>
            </tr>
            <tr align='center'>
                <td><input type='submit' value='login' class='btntheme'></td>
            </tr>
        </table>
        </form>
        
    </body>
</html>
