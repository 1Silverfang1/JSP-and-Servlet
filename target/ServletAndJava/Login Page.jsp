<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/12/19
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/LoginPage.css">
</head>
<body>
<jsp:include page="LayoutTemplates/LayoutHeader.jsp"></jsp:include>
<br><br><br><br><br><br>


    <div class="mt-5 loginFormDiv">
        <form action="Login" class="mt-5 text-center loginForm" method="post">
            <p class="text-left text-primary">Your  Username</p>
            <input type="text" required autocomplete="off" placeholder="Enter your Username" id="UsernameField" name="Username">
            <br><br><br>
            <p class="text-left text-primary">Your email address</p>
            <input type="text" required autocomplete="off" placeholder="Enter your Mail Address" id="EmailField" name="Email">
            <br><br><br>
            <p class="text-left text-primary">Password</p>
            <input type="password" required autocomplete="off" placeholder="Enter your Password" id="PasswordField" name="Password">
            <br><br><br>
            <input class="text-center submitButton" type="submit" value="LOG IN">
            <br>
        </form>
    </div>
<br><br><br>
<jsp:include page="LayoutTemplates/LayoutFooter.jsp"></jsp:include>
</body>
</html>
