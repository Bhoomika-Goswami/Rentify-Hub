<html>
    <link href="style.css" rel="stylesheet">
       
    <body>
        <%@include file="studenttop.jsp"%>
    
        <form action="complainjavacode.jsp">
    <table width='50%' class='formtheme' cellspacing='20px' align='center'>
        <tr align="center">
                <td colspan="4"><h1>COMPLAIN FORM</h1></td>
            </tr>
            <tr>
                <td>Full name</td>
                <td><input type='text' name='fnm' class='texttheme'></td>
                </tr>
                <tr>
                <td>Complain</td>
                <td><textarea name='comp' class='texttheme' style="height:200px"></textarea></td>
            </tr>   
            <tr align='center'>
                <td colspan='4'><input type='submit' value='submit' class='btntheme'>
                
            </tr>
        </table>
        </form>
     
        <!--   <div class="divtheme">
        
            </div> -->
    </body>
</html>
