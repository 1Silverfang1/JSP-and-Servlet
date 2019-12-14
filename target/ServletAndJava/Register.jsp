<%@ page import="static Constants.URLConstants.BOOTSTRAP_CSS" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Registration</title>
</head>
<link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
<link rel="stylesheet" href="CSS/Register.css">
<body class="bg-light" >
<jsp:include page="<%=HEADER_FILE%>"></jsp:include>
<br><br><br><br><br>
<form action="RegisterUser" method="post" class="mt-5 mx-auto w-50  ">
    <%
        if(request.getAttribute("RegisterMessage")!=null)
        {
    %>
    <h2 class="text-center text-warning"><%=request.getAttribute("RegisterMessage")%></h2>
    <%
        }
    %>
    <div class="form-group">
        <input type="text" class="form-control" id="name" placeholder="Enter Username" name="Name" autocomplete="off" required >
    </div>
    <div class="form-group">
        <input type="password" class="form-control" id="password" autocomplete="off" placeholder="Enter Password" name="Password" required>
    </div>
    <div class="form-group">
        <input type="email" class="form-control" id="email" placeholder="Enter your mail address" name="Email" required>
    </div>
    <section class="text-center">
    <button type="submit" class="text-center btn btn-success">Register</button>
    </section>
</form>
<br><br>
<jsp:include page="<%=FOOTER_FILE%>"/>
</body>
</html>