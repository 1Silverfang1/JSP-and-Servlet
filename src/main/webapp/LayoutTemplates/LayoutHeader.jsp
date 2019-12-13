<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg fixed-top navbar-blue bg-white">
    <a class="navbar-brand" href="#"><img src="./frenzzy_files/logoWeb1x_1_thzngg.png" al>
    </a>
    <img id="badge-small-image" src="./frenzzy_files/badge_small.png">
    <span style="display:inline-block"><span id="brand-suffix-header">NBFC-P2P</span>
          <br>
          <span  id="brand-suffix-sub">Registered with RBI</span></span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/ServletAndJava_war_exploded/index.jsp">HOME<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ServletAndJava_war_exploded/LoginPage.jsp">LOGIN</a>
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
                <a class="nav-link " id ="Apply" href="./ContactUs.jsp" tabindex="-1">CONTACT US</a>
            </li>
        </ul>
    </div>
</nav>