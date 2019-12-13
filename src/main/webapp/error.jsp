<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/12/19
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/error.css">
</head>
<body>
<jsp:include page="LayoutTemplates/LayoutHeader.jsp"></jsp:include>
<br><br><br><br><br><br><br><br>
<div class="text-center">
<img src="images/warningg.png" class= "warning" alt="">

<h2 class="text-center text-warning"> You Have Entered Wrong Details</h2>
<p class="text-center">You are being redirected to Home page</p>
<%
    response.setHeader("Refresh", "3;url=./LoginPage.jsp");
%>
<br><br><br><br>
<hr>
</div>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>
</html>
