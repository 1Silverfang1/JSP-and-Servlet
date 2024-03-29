<%@ page import="java.util.List" %>
<%@page import="OrmEntity.ContactForm" %>
<%@ page import="static Constants.Constants.*" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Retrieve</title>
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href= <%=RETRIEVE_DATA_CSS%>>
</head>
<body>
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br>
<%
    response.setHeader(NO_CACHE,CACHE_CONTROL);
    if(session.getAttribute(SESSION_ID_ATTRIBUTE)==null|| session.getAttribute(ADMIN_ATTRIBUTE)==null) {
        response.sendRedirect(LOGIN_PAGE);
    }
%>
<br><br><br>
<h3 class="text-center text-primary">Here is the Data</h3>
<hr>
<div class="container justify-content-center">
<table BORDER="1" class="table table-dark text-center">
    <TR>
        <TH>Name</TH>
        <TH>Mobile</TH>
        <TH>Email</TH>
        <TH>Message</TH>
    </TR>
    <%
        List<ContactForm> resultList= (List<ContactForm>) request.getSession().getAttribute(FORM_RESULT);
        if (resultList!=null) {
            for (ContactForm curRow : resultList) { %>
    <TR>
        <TD> <%= curRow.getName() %></td>
        <TD> <%= curRow.getMobileNumber() %></TD>
        <TD> <%= curRow.getEmail() %></TD>
        <TD> <%= curRow.getMessage() %></TD>
    </TR>
    <%     }
    }
    %>
</table>
</div>
<hr>
<div class="Logout">
<form action="<%=LOGOUT_USER%>" method="<%=POST_METHOD%>">
    <input type="<%=SUBMIT_TYPE%>" value="<%=LOGOUT_VALUE%>">
</form>
</div>
<br><br>
<div id ="footer">
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</div>
</body>
</html>
