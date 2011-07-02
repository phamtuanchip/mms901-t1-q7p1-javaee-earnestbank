<%-- 
    Document   : hello
    Created on : Jun 20, 2011, 10:50:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>    
        <div>
            <table width="224" border="0" align="center" cellpadding="4" cellspacing="0" style="background-image:url(images/index_21.gif);">
                <tr>
                    <td>
                        <div style="padding:15px;"><img src="images/index_24.gif" width="176" height="22" alt="" /></div>
                        <div style="padding-bottom:8px;">
                            <form id="form1" name="form1" method="post" action="" style="margin:auto;">
                                <table width="215" border="0" align="center" cellpadding="3" cellspacing="0">
                                    <tr>
                                        <td align="center" class="body1" style="padding-top:15px;">Welcome <%=session.getAttribute("CurrentUser")%>!!!</td>
                                    </tr>
                                    <tr>
                                        <td><a href="index.jsp">Logout</a></td>
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