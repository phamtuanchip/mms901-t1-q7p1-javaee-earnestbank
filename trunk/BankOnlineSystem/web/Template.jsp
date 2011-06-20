
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/template.tld" prefix="template" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Bank Online</title>
        <link href="template.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#AD7934">
            <tr>
                <td width="230" valign="top">
                    <template:get name="left_sidebar" />
                </td>
                <td width="320" valign="top" bgcolor="#7F4F20">
                    <template:get name="content" />
                    <template:get name="Template_index" />
                    <template:get name="Template_content" />
                    <template:get name="Template_customer" />
                </td>
                <td width="230" valign="top">
                    <template:get name="top_right_sidebar" />
                    <template:get name="right_sidebar" />
                    <template:get name="bottom_right_sidebar" />
                </td>   
            </tr>
            <tr>
                <template:get name="footer" />
            </tr>
        </table>
    </body>
</html>
