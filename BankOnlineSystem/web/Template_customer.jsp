
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Customer Registration</title>
            <link href="css.css" rel="stylesheet" type="text/css" />
            <script type="text/javascript" charset="utf-8" src="js/jquery-1.3.2.min.js"></script>
            <script type="text/javascript" charset="utf-8" src="js/jquery.validate.js"></script>
            <script type="text/javascript" charset="utf-8" src="js/validate.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                    $("#register-form").validate({
                        rules:{
                            username:{
                                required: true,
                                minlength: 4
                            },
                            pwd:{
                                required: true,
                                minlength: 4
                            },
                            cpwd:{
                                required: true,
                                equalTo: "#pwd"
                            },
                            bankAN:{
                                required: true
                            },
                            email:{
                                required: true,
                                email: true
                            },
                            contact:{
                                required: true
                            }
                        },
                        messages:{
                            username: {
                                required: "Please enter your username!",
                                minlength: "Your username must consist of at least 4 characters!"
                            },
                            pwd:{
                                required: "Please enter your password!",
                                minlength: "Your username must be at least 4 characters long!"
                            },
                            cpwd:{
                                required: "Please enter your confirm-password!",
                                equalTo: "Please enter the same password as above!"
                            },
                            bankAN:{
                                required: "Please enter your bank account number!"
                            },
                            email:{
                                required: "Please enter your email!",
                                email: "Please enter a valid email!"
                            }
                        }
                    });
                    $("#username").change(function(){
                        var username = $(this).val();
                        if(username.length>3){
                            $(".status").html("Checking availability...");
                            $.ajax({
                                    type: "POST",
                                    url: "checkuser",
                                    data: "username=" + username,
                                    success: function(msg){
                                        $(".status").ajaxComplete(function(event, request, settings){
                                            $(".status").html(msg);
                                        });
                                    }
                            });
                        }
                    });
                    $.ajax({
                            type: "POST",
                            url: "customer",
                            data: "username=" + username + "& password=" + pwd + "& bank account number=" + bankAN + "& email=" + email + "& contact=" + contact,
                            success: function(msg){
                                $("#lblMessage").ajaxComplete(function(event, request, settings){
                                    $("#lblMessage").html(msg);
                                });
                            }
                        });
                });
            </script>
        </head>
        <body>
            <h1 id="lblMessage" align="center" color="red"></h1>
            <form method = "post" action="customer" id="register-form">
                <table width="320" valign="top" bgcolor="#7F4F20" align = center>
                    <br />
                            <tr>
                                <td><label for="username"><strong>UserName:</strong></label> <span>*</span></td>
                                <td>
                                    <input type = "text" id = "username" name="username"><br/>
                                    <span class="status"></span>
                                    <%--<label class="error" for="username" id="username_error1" generated="true"> User Name required!!!</label> <br />
<label class="error" for="username" id="username_error2" generated="true"> User Name at least 4 character and length max 15 character!!!</label>--%>
                                </td>
                            </tr
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td><label for="pwd"><strong> Password:</strong></label> <span>*</span></td> 
                                <td>
                                    <input type = "password" id = "pwd" name="pwd">
                                    <%--<label class="error" for="pwd" id="password_error1"> Password required!!!</label> <br />
<label class="error" for="pwd" id="password_error2"> Password at least 4 character!!!</label>--%>
                                </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td><label for="cpwd"><strong> Confirm Password:</strong></label> <span>*</span></td> 
                                <td>
                                    <input type = "password" id = "cpwd" name="cpwd">
                                    <%--<label class="error" for="cpwd" id="password2_error"> Password does not match!!!</label>--%>
                                </td>
                           </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                    <td><label for="bankAN"><strong> Bank Account Number:</strong></label><span>*</span> </td>
                                    <td>
                                        <input type = "text" id = "bankAN" name="bankAN">
                                        <%--<label class="error" for="bankAN" id="bankAN_error1"> Bank Account is required!!!</label> <br />
<label class="error" for="bankAN" id="bankAN_error2"> Bank Account is invalid!!!</label>--%>
                                    </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                    <td><label for="email"><strong> Email:</strong></label> <span>*</span></td> 
                                    <td>
                                        <input type = "text" id = "email" name="email">
                                        <%--<label class="error" for="txtEmail" id="email_error1"> Email is required!!!</label> <br />
<label class="error" for="txtEmail" id="email_error2"> Email is not correct format!!!</label>--%>
                                    </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td><label for="contact"><strong> Contact:</strong></label> <span>*</span></td>
                                <td>
                                    <input type = "text" id = "contact" name="contact">
                                    <%--<label class="error" for="contact" id="contact_error1"> Contact is required!!!</label> <br />
                                    <label class="error" for="contact" id="contact_error2"> Contact is at least 10 digits and length max 20 digits!!!</label> <br />
<label class="error" for="contact" id="contact_error3"> Contact is not correct format!!!</label>--%>
                                </td>
                            </tr>
                            <br />
                            <br />
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td align="center"><input type="submit" name="btnSubmit" id="btnSubmit" value = "Submit"></td>
                                <td align="center"><input type = "reset" value = "Reset"></td>
                            </tr>
                </table>
            </form>
        </body>
    </html>
