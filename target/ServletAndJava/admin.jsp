<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/12/19
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/admin.css">

</head>
<body>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("SessionId")==null|| session.getAttribute("admin")==null) {
        response.sendRedirect("./LoginPage.jsp");
    }
%>
<jsp:include page="LayoutTemplates/LayoutHeader.jsp"></jsp:include>
<br><br><br>
<h1 class="text-center text-primary mt-5">Do you want to know what feedback You Got</h1>
<p class="text-center">Feedback gives us our real chance to grow</p>

<p class="text-center"><a class="text-primary" href="getData">Click here to get the data</a></p>

<div class="Logout">
<form action="Logout"method="post">
<input type="submit" value="logout">
</form>
</div>
    <div id ="footer">
    <jsp:include page="LayoutTemplates/LayoutFooter.jsp"></jsp:include>
    </div>

</body>
</html>
