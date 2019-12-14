<%@ page import="static Constants.Constants.*" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Submitted</title>
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href=<%=SUCCESS_PAGE_CSS%>>
</head>
<body>
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br><br><br><br><br><br><br>
<div class="text-center">
    <%
        if(request.getSession().getAttribute("Form")==null) {
            response.sendRedirect(SUBMIT_FEEDBACK);
        }
        request.getSession().removeAttribute("Form");
    %>

<img src="images/success.jpg" class= "warning" alt="">
<h2 class="text-center text-success"> You Have Successfully Submitted the form</h2>
<p class="text-center text-success">We are thankful for your time and will be reaching out to you soon</p>
<br><br><br><br>
<hr>
</div>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>
</html>
