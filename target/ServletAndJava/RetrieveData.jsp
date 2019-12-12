<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Retrieve</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/landingpage.css">
</head>
<body>
<jsp:include page="LayoutTemplates/LayoutHeader.jsp"></jsp:include>
<br><br>
<h1 class="text-center text-primary mt-5">Do you want to know what feedback you gave</h1>
<p class="text-center">Just Enter the Mobile Number For the Feedabck</p>
<form method="get" action="getData">
    <input type="number" name="mobileNumber">
    <input type="submit">
</form>
<footer class="footer">
<jsp:include page="LayoutTemplates/LayoutFooter.jsp"></jsp:include>
</footer>
</body>
</html>
