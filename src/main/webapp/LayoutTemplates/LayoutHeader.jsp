<%@ page import="static Constants.Constants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="static Constants.URLConstants.*" %>
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
                <a class="nav-link" href= "<%=LAYOUT_INDEX_PATH%>">HOME<span class="sr-only">(current)</span></a>
            </li>
            <%
            String Attribute= (String) request.getSession().getAttribute(ADMIN_ATTRIBUTE);
            if(Attribute==null)
            {
            %>
            <li class="nav-item">
                <a class="nav-link " id="adminLogin" href=<%=LOGIN_PAGE%>>LOGIN</a>
            </li>

            <%
                } else
                {%>
            <li>
                <form  id="logoutUser"action="<%=LOGOUT_USER%>"method=<%=POST_METHOD%>>
                    <input class="mt-1 text-primary"style="border: none ;background: none ; font-size: 14px" type="submit" value="LOGOUT">
                </form>
            </li>
            <%}%>

            <li class="nav-item ">
                <a class="nav-link text-primary " href="<%=REGISTER_SERVLET%>">
                    REGISTER NOW
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " id ="Apply" href=<%=SUBMIT_FEEDBACK%> tabindex="-1">CONTACT US</a>
            </li>
        </ul>
    </div>
</nav>