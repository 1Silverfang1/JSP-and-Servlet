<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 10/12/19
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/ContactUs.css">
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top navbar-blue bg-white">
    <a class="navbar-brand" href="#"><img src="frenzzy_files/logoWeb1x_1_thzngg.png" al>
    </a>
    <img id="badge-small-image" src="frenzzy_files/badge_small.png">
    <span style="display:inline-block"><span id="brand-suffix-header">NBFC-P2P</span>
          <br>
          <span  id="brand-suffix-sub">Registered with RBI</span></span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>



    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">BORROW <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">LOGIN</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    INVEST
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Invest Now</a>
                    <a class="dropdown-item" href="#">Invest Later</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Invest Never</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link "  id ="Apply"href="#" tabindex="-1">APPLY NOW</a>
            </li>
        </ul>
    </div>
</nav>
<br><br><br>

<h1 class="text-center text-primary mt-5">Do you have a question or feedback?</h1>
<p class="text-center">Send us a message and we will get back to you.</p>
<br><br>
<section>
    <div class="ContactForm mt-5">
        <form action="SubmitResult">
    <p>Your Name</p>
        <input type="text" required autocomplete="off" placeholder="Enter your Name" id="NameField">
        <br>
        <p>Your mobile number</p>
        <input type="text" required autocomplete="off" PLACEHOLDER="+91" id="MobileField">
        <br>
        <p>Your email address</p>
        <input type="text" required autocomplete="off" placeholder="Enter your Mail Address" id="EmailField">
        <p>Message</p>
        <textarea name="MessageField" id="MessageField" placeholder="Your Comments" autocomplete="off" rows="5"></textarea>
        <br> <br>
          <input class="mx-auto submitButton" type="submit" value="Submit My feeback">
        <br>
        </form>
    </div>
</section>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
