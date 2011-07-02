<%-- 
    Document   : content
    Created on : Jun 20, 2011, 4:44:17 PM
    Author     : Administrator
--%>

<%@taglib uri="/WEB-INF/tlds/template.tld" prefix="template" %>
<%@page import="BankController.User" %>
<template:insert template="Template.jsp">
    <template:put name="left_sidebar" content="/WEB-INF/tlds/left_sidebar.html" />
    <template:put name="content" content="/WEB-INF/tlds/content.html" />
    <template:put name="Template_content" content="/WEB-INF/tlds/Template_content.jsp" />
    <template:put name="top_right_sidebar" content="/WEB-INF/tlds/top_right_sidebar.html" />
    <% User user = (User)session.getAttribute("CurrentUser");
        if(user == null){%> 
            <template:put name="right_sidebar" content="Login.jsp" />
    <%} else {%>
            <template:put name="login" content="/WEB-INF/tlds/Logged.jsp" />
      <%}%>
    <template:put name="bottom_right_sidebar" content="/WEB-INF/tlds/bottom_right_sidebar.html" />
    <template:put name="footer" content="/WEB-INF/tlds/footer.html" />
</template:insert>
