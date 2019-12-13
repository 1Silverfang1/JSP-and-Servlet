<%@ page import="static com.servlet.orm.Constants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg fixed-top navbar-blue bg-white">
    <a class="navbar-brand" href=<%=LAYOUT_INDEX_PATH%>><img src=<%=NAV_LOGO%> al>
    </a>
    <img id="badge-small-image" src=<%=BADGE_LOGO%>>
    <span style="display:inline-block"><span id="brand-suffix-header">NBFC-P2P</span>
          <br>
          <span  id="brand-suffix-sub">Registered with RBI</span></span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href=<%=LAYOUT_INDEX_PATH%>>HOME<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link " id="adminLogin" href=<%=LAYOUT_LOGIN_PAGE%>>LOGIN</a>
                </li>
            <li>
                <form id="logoutUser"action="<%=LOGOUT_USER%>"method=<%=POST_METHOD%>>
                    <input type="submit" value="logout">
                </form>
            </li>
            <%
            //request.getSession().getAttribute()
            %>
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
                <a class="nav-link " id ="Apply" href=<%=CONTACT_US_PAGE%> tabindex="-1">CONTACT US</a>
            </li>
        </ul>
    </div>
</nav>