<%@ page import="static Servlet.Constants.*" %><%--
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
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href=<%=LOGIN_PAGE_CSS%>>
</head>
<body>
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br><br><br><br><br>


    <div class="loginFormDiv">
        <form action= "<%=LOGIN_PAGE%>" class="text-center loginForm" method="<%=POST_METHOD%>">
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
<%
    String errorMessage = (String) request.getSession().getAttribute(ERROR_ATTRIBUTE);
    if(errorMessage!=null)
    {
        response.getWriter().println("<br><br><br><span class='text-center text-warning'> <h2>"+errorMessage+"</h2> </span>" );
        request.getSession().removeAttribute(ERROR_ATTRIBUTE);
   //     request.getSession().invalidate();
    }
%>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>
</html>
