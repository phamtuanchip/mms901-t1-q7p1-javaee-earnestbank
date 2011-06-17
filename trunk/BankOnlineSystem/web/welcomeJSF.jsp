<%@page import="BankController.CustomerController"%>
<%@page import="org.w3c.dom.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<jsp:useBean id="customer" class="BankEntity.Customer" scope="session"/>
<f:view>
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
                if(document.getElementById("pwd").value.length==0){
                    alert("The password field cannot remain blank.")
                    submitOK="false"
                }
                if(document.getElementById("bankAN").value.length==0){
                    alert("The Bank Account Number field cannot remain blank.")
                    submitOK="false"
                }
                if(document.getElementById("email").value.length==0){
                    alert("The email field cannot remain blank.")
                    submitOK="false"
                }
                else if(document.getElementById("email").value.indexOf("@",0)==-1){
                    alert("Invalid E-mail")
                    submitOK="false"
                }
                if(document.getElementById("contact").value.length==0){
                    alert("The contact field cannot remain blank.")
                    submitOK="false"
                }
                if(submitOK=="false"){
                    return false
                }
        <jsp:setProperty name="customer" property="userName" param="username" />
        <jsp:setProperty name="customer" property="password" param="pwd" />
        <jsp:setProperty name="customer" property="bankAccNumber" param="bankAN" />
        <jsp:setProperty name="customer" property="emailId" param="email" />
        <jsp:setProperty name="customer" property="contactId" param="contact" />
        <% CustomerController cusc = new CustomerController();
           cusc.AddCustomer(customer);
        %>
            }
        </script>
        <body>
                <center>
			<h2> New Customer Registration Form </h2>
		</center>
		<br>
                <form name="f1" action = " " method = "post" onsubmit="return validate()">
		<table align = center>
			<tr>
				<td> UserName: </td> <td><input type = "text" id = "username" name="username"></td>
				<td> Password: </td> <td><input type = "password" id = "pwd" name="pwd"></td>
			</tr>
			<tr>
				<td> Bank Account Number: </td> <td><input type = "text" id = "bankAN" name="bankAN"></td>
			</tr>
			<tr>
				<td> Email: </td> <td><input type = "text" id = "email" name="email"></td>
				<td> Contact: </td> <td><input type = "text" id = "contact" name="contact"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td><input type = "submit" value = "Submit"></td>
				<td><input type = "reset" value = "Reset"></td>
			</tr>
		</table>
        </body>
    </html>
</f:view>
