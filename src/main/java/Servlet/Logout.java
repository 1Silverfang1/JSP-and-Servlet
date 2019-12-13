package Servlet;

import Constants.Constants;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Constants.URLConstants.LOGIN_PAGE_URL;

public class Logout extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session= request.getSession();
        session.removeAttribute(Constants.ADMIN_ATTRIBUTE);
        session.removeAttribute(Constants.SESSION_ID_ATTRIBUTE);
        session.invalidate();
        response.sendRedirect(LOGIN_PAGE_URL);
    }
}
