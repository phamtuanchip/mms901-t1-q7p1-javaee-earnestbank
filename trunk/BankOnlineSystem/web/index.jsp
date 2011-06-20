<%-- 
    Document   : index
    Created on : Jun 18, 2011, 2:58:36 PM
    Author     : Administrator
--%>

<%@taglib uri="/WEB-INF/tlds/template.tld" prefix="template" %>
<template:insert template="Template.jsp">
    <template:put name="left_sidebar" content="/WEB-INF/tlds/left_sidebar.html" />
    <template:put name="content" content="/WEB-INF/tlds/content.html" />
    <template:put name="Template_index" content="/WEB-INF/tlds/Template_index.jsp" />
    <template:put name="top_right_sidebar" content="/WEB-INF/tlds/top_right_sidebar.html" />
    <template:put name="right_sidebar" content="/WEB-INF/tlds/Template_login.jsp" />
    <template:put name="bottom_right_sidebar" content="/WEB-INF/tlds/bottom_right_sidebar.html" />
    <template:put name="footer" content="/WEB-INF/tlds/footer.html" />
</template:insert>