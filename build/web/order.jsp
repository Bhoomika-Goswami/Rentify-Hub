<html>
    <link href="style.css" rel="stylesheet">
       
    <body>
        <%@include file="studenttop.jsp"%>
    
        <form action="orderjavacode.jsp">
        <table width='40%' class='formtheme' cellspacing='20px'>
            <tr align="center">
                <td><h1>ORDER FORM</h1></td>
            </tr>
            <tr>
                <td>Student ID</td>
                <td><input type='text' class='texttheme'></td>
            </tr>
            <tr>
                <td>Product name</td>
                <td><select name="product" class="texttheme">
                        <option>select product</option>
                        <option>Couch (600\-)</option>
                        <option>Iron (350\-)</option>
                        <option>Washing Machine (4000\-)</option>
                        <option>Laptop (3000\-)</option>
                        <option>PlayStation (6000\-)</option>
                    
                </select></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type='text' class='texttheme'></td>
            </tr>
            <tr>
            <tr>
                <td>City</td>
                <td><select name='city' class='texttheme'>
                            <option>select city</option>
                            <option>Indore</option>
                            <option>Ujjain</option>
                            <option>Dewas</option>
                            <option>Bhopal</option>    
                </select></td>
            </tr>
            <tr>
            <tr>
                <td>Contact No.</td>
                <td><input type='text' class='texttheme'></td>
            </tr>
            <tr>
                <td><input type='submit' value='Order' class='btntheme'></td>
            </tr>
        </table> 
            </form>
    
       
    </body>
</html>
