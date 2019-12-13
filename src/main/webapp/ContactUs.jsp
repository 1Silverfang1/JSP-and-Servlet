<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 10/12/19
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="static com.servlet.orm.Constants.*" %>

<html>
<head>
    <title>Contact Us Form</title>
    <link rel="stylesheet" href= <%=bootstrapCss%>>
    <link rel="stylesheet" href="CSS/ContactUs.css">
</head>
<body>
<jsp:include page=<%=HEADER_FILE%>></jsp:include>
<br><br><br>

<h1 class="text-center text-primary mt-5">Do you have a question or feedback?</h1>
<p class="text-center">Send us a message and we will get back to you.</p>
<br><br>
<section>
    <div class="ContactForm mt-5">
        <form action="SubmitResult" class="text-success" method="get">
    <p>Your Name</p>
        <input type="text" required autocomplete="off" placeholder="Enter your Name" id="NameField" name="Name">
        <br>
        <p>Your mobile number</p>
        <input type="number" required autocomplete="off" PLACEHOLDER="+91" id="MobileField" name="Mobile">
        <br>
        <p>Your email address</p>
        <input type="text" required autocomplete="off" placeholder="Enter your Mail Address" id="EmailField" name="Email">
        <p>Message</p>
        <textarea name="MessageField" id="MessageField" placeholder="Your Comments" name="Message" autocomplete="off" rows="5"></textarea>
        <br> <br>

          <input class="text-center submitButton" style="margin-left: 35%" type="submit" value="Submit My feeback">
        <br>
        </form>
    </div>
</section>
<br><br><br>
<jsp:include page="LayoutTemplates/LayoutFooter.jsp"></jsp:include>
</body>
</html>
