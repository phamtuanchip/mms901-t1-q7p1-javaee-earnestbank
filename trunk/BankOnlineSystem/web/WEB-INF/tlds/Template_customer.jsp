
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BankController.CustomerController"%>
<jsp:useBean id="customer" class="BankEntity.Customer" scope="session"/>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Customer Registration</title>
        </head>
        <script language="JavaScript">
            function validate(){
                submitOK="true"
                if(document.getElementById("username").value.length==0){
                    alert("The username field cannot remain blank.")
                    submitOK="false"
                }
                else if(document.getElementById("pwd").value.length==0){
                    alert("The password field cannot remain blank.")
                    submitOK="false"
                }
                else if(document.getElementById("bankAN").value.length==0){
                    alert("The Bank Account Number field cannot remain blank.")
                    submitOK="false"
                }
                else if(document.getElementById("email").value.length==0){
                    alert("The email field cannot remain blank.")
                    submitOK="false"
                }
                else if(document.getElementById("email").value.indexOf("@",0)==-1){
                    alert("Invalid E-mail")
                    submitOK="false"
                }
                else if(document.getElementById("contact").value.length==0){
                    alert("The contact field cannot remain blank.")
                    submitOK="false"
                }
        <jsp:setProperty name="customer" property="userName" param="username" />
        <jsp:setProperty name="customer" property="password" param="pwd" />
        <jsp:setProperty name="customer" property="bankAccNumber" param="bankAN" />
        <jsp:setProperty name="customer" property="emailId" param="email" />
        <jsp:setProperty name="customer" property="contactId" param="contact" />
        <% CustomerController cusc = new CustomerController();
           cusc.AddCustomer(customer);
        %>
                if(submitOK=="false"){
                    return false
                }
                else{
                    alert("You registrated successfully")
                }
            }
            
        </script>
        <body>
                <form name="f1" action = " " method = "post" onsubmit="return validate()">
                    <table width="320" valign="top" bgcolor="#7F4F20" align = center>
                            <div><img src="images/index_39.gif" width="320" height="65" alt="" /></div>
                            <br />
                            <tr>
                                <td> UserName: </td> <td><input type = "text" id = "username" name="username"></td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td> Password: </td> <td><input type = "password" id = "pwd" name="pwd"></td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                    <td> Bank Account Number: </td> <td><input type = "text" id = "bankAN" name="bankAN"></td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                    <td> Email: </td> <td><input type = "text" id = "email" name="email"></td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td> Contact: </td> <td><input type = "text" id = "contact" name="contact"></td>
                            </tr>
                            <br />
                            <br />
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                    <td align="center"><input type = "submit" value = "Submit"></td>
                                    <td align="center"><input type = "reset" value = "Reset"></td>
                            </tr>
                    </table>
                </form>
        </body>
    </html>
