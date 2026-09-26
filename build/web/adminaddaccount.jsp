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
            margin-top:50px; 
            font-family: arial;
            font-size: 18px;
            background-color:rgba(124,24,44,0.8);
            box-shadow: 5px 5px 5px black;
        }
    </style>
    <body>
        <%@include file="admintop.jsp" %><!-- comment -->
        <h2 style="text-align:right"><a href="home.jsp"  style="font-size:20px;color:white;text-transform: uppercase">logout</a></h2>
    
        <form action="adminaddaccountjavacode.jsp">
            <table  width='40%' align="center" class="formtheme1" cellspacing='20px'>
                <tr align="center"><td><h1>Add Account</h1></td></tr>
                <tr>
                    <td>Employee ID</td>
                    <td><input type="text" name="empid" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pwd" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Employee Name</td>
                    <td><input type="text" name="name" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Mail Id</td>
                    <td><input type="text" name="mailid" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="number" name="cont" class="texttheme"></td>
                </tr>
                <tr>
                <td>Gender</td>
                    <td><input type="text" name="gen" class="texttheme"></td>
                </tr>
                <tr>
                <td>DOB</td>
                    <td><input type="text" name="dob" class="texttheme"></td>
                </tr>
                <tr>
                <td>Address</td>
                    <td><input type="text" name="add" class="texttheme"></td>
                </tr>
                <tr>
                <td>City</td>
                    <td><input type="text" name="city" class="texttheme"></td>
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
