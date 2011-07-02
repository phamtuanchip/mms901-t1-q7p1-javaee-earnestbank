<%-- 
    Document   : Template_login
    Created on : Jun 20, 2011, 3:47:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BankController.CustomerController"%>
<%--<jsp:useBean id="customer" class="BankEntity.Customer" scope="session"/>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <script language="JavaScript">
        
    </script>
    <body>    
        <div>
                <table width="224" border="0" align="center" cellpadding="4" cellspacing="0" style="background-image:url(images/index_21.gif);">
                <tr>
                    <td>
                        <div style="padding:15px;"><img src="images/index_24.gif" width="176" height="22" alt="" /></div>
                        <div style="padding-bottom:8px;">
                            <form id="login-form" name="form1" method="post" action="login" style="margin:auto;">
                                <table width="215" border="0" align="center" cellpadding="3" cellspacing="0">
                                    <tr>
                                        <td width="59" class="field">User Name:</td>
                                        <td width="140"><label><input type="text" id="usn" name="usn" style="width:90%;" /></label></td>
                                    </tr>
                                    <tr>
                                        <td class="field">Password:</td>
                                        <td><label><input type="password" id="pswd" name="pswd"style="width:90%;" /></label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="right" class="field" style="padding-right:12px;">
                                            <a href="New_Customer.jsp">Registered?</a>
                                            <input type = "submit" value = "Login">
                                        </td>
                                    </tr>
                                  </table>
                             </form>
                        </div>
                    </td>
                 </tr>
               </table>
        </div>
    </body>
</html>
