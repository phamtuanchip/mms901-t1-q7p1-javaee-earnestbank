<%-- 
    Document   : New_Customer
    Created on : Jun 20, 2011, 2:20:47 PM
    Author     : Administrator
--%>

<%@taglib uri="/WEB-INF/tlds/template.tld" prefix="template" %>
<template:insert template="Template.jsp">
    <template:put name="left_sidebar" content="/WEB-INF/tlds/left_sidebar.html" />
    <template:put name="content" content="/WEB-INF/tlds/content.html" />
    <template:put name="Template_customer" content="Template_customer.jsp" />
    <template:put name="top_right_sidebar" content="/WEB-INF/tlds/top_right_sidebar.html" />
    <%--<% Object authorized = session.getAttribute("authorized");
        if(authorized == null){%> 
            <template:put name="right_sidebar" content="Login.jsp" />
    <%} else {%>
            <template:put name="login" content="/WEB-INF/tlds/Logged.jsp" />
      <%}%>
    --%>
    <template:put name="bottom_right_sidebar" content="/WEB-INF/tlds/bottom_right_sidebar.html" />
    <template:put name="footer" content="/WEB-INF/tlds/footer.html" />
</template:insert>

