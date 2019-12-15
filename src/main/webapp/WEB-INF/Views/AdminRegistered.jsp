<%@ page import="static Constants.Constants.*" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registered Successfully</title>
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href=<%=SUCCESS_PAGE_CSS%>>
</head>
<body>
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br><br><br><br><br><br><br>
<div class="text-center">
    <%
        if(request.getAttribute(ADMIN_ATTRIBUTE)==null)
        {
            response.sendRedirect(REGISTER_URL);
        }
    %>
    <img src=<%=FORM_SUBMITTED_IMG%> alt="Success">
    <h2 class="text-center text-success">New Admin Account Successfully Created</h2>
    <p class="text-center text-success">Start Exploring the new Possibilities by Logging In</p>
    <br><br><br><br>
    <hr>
</div>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>
</html>
