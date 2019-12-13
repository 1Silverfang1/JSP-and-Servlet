<%@ page import="java.util.List" %>
<%@page import="com.servlet.orm.ContactForm" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Retrieve</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/RetrieveData.css">
</head>
<body>
<jsp:include page="LayoutTemplates/LayoutHeader.jsp"></jsp:include>
<br><br>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("SessionId")==null|| session.getAttribute("admin")==null) {
        response.sendRedirect("./LoginPage.jsp");
    }
%>
<br><br><br>
<h3 class="text-center text-primary">Here is the Data</h3>
<hr>
<div>
<table BORDER="1" class="table table-dark">
    <TR>
        <TH>name</TH>
        <TH>mobile</TH>
        <TH>email</TH>
        <TH>message</TH>
    </TR>
    <%
        List<ContactForm> resultList= (List<ContactForm>) request.getSession().getAttribute("contactListResult");
//        if(resultList==null)
//            response.sendRedirect("./LoginPage.jsp");
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
<form action="Logout" method="post">
    <input type="submit" value="Logout">
</form>
</div>
<br><br>
<div id ="footer">
<jsp:include page="LayoutTemplates/LayoutFooter.jsp"></jsp:include>
</div>
</body>
</html>
