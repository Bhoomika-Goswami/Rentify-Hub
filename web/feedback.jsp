<html>
    <link href="style.css" rel="stylesheet">
       
    <body>
        <%@include file="studenttop.jsp"%>
    
        
        <form action="feedbackjavacode.jsp">
        <table width='40%' class='formtheme' cellspacing='20px'>
            <tr align="center">
                <td><h1>FEEDBACK FORM</h1></td>
            </tr>
            <tr>
                <td>User ID</td>
                <td><input type='text' class='texttheme'  name="uid"></td>
            </tr>
            <tr>
                <td>Full name</td>
                <td><input type='text' class='texttheme'  name="fnm"></td>
            </tr>
            <tr>
                <td >Feedback</td>
                <td><input type='text' class='texttheme' style="height:100px"  name="feedback"></td>
            </tr>
            <tr>
                <td><input type='submit' value='submit' class='btntheme'></td>
            </tr>
        </table> 
            </form>
    </body>
</html>
