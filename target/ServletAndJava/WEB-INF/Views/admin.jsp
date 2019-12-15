<%@ page import="static Constants.Constants.*" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href=<%=ADMIN_CSS%>>

</head>
<body>
<%
    response.setHeader(NO_CACHE,CACHE_CONTROL);
    if(session.getAttribute(SESSION_ID_ATTRIBUTE)==null|| session.getAttribute(ADMIN_ATTRIBUTE)==null) {
 response.sendRedirect(LOGIN_PAGE);
    }
%>
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br><br>
<h1 class="text-center text-primary mt-5">Do you want to know what feedback You Got</h1>
<p class="text-center">Feedback gives us our real chance to grow</p>
<form action= "<%=GET_RESULT%>" method="post">
<p class="text-center"><input type="submit" class="text-primary" value="Click here to Get Form Data"></p>
</form>
<div class="Logout">
<form action="<%=LOGOUT_USER%>"method=<%=POST_METHOD%>>
<input type="submit" value="logout">
</form>
</div>
    <div id ="footer">
        <jsp:include page="<%=FOOTER_FILE%>"></jsp:include>    </div>

</body>
</html>
