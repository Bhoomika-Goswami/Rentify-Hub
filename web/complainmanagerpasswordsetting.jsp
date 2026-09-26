<html>
    <link href="style.css" rel="stylesheet">
    <body>
        <%@include file="complainmanagertop.jsp" %>
        <form  action="complainmanagerpasswordsettingjavacode.jsp">
            <table  width='40%'  class='formtheme'  cellspacing='20px' align="center">
                <tr align="center">
                    <td><h1>PASSWORD SETTINGS FORM</h1></td>    
                </tr>
                <tr>
                    <td>ComplainManager Id</td>
                    <td><input type='text' name="cmid" class='texttheme'></td>
                </tr>
                <tr>
                    <td>Old Password</td>
                    <td><input type='password' name="opwd" class='texttheme'></td>
                </tr>
                <tr>  <td>New Password</td>
                    <td><input type='password' name="npwd" class='texttheme'></td>
                </tr>
                <tr>
                     <td>Confirm New Password</td>
                    <td><input type='password' name="cnpwd" class='texttheme'></td>
                </tr>
                
                
                    <td colspan="4"><input type='submit' value='Submit' class="btntheme">

            
            
            </table>

        </form>

        
        
        
        
    </body>
</html>
