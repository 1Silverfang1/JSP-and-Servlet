package Servlet;

import Constants.Constants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Constants.URLConstants.LOGIN_PAGE_URL;

public class Logout extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session= request.getSession();
        session.removeAttribute(Constants.ADMIN_ATTRIBUTE);
        session.removeAttribute(Constants.SESSION_ID_ATTRIBUTE);
        session.invalidate();
        RequestDispatcher requestDispatcher= request.getRequestDispatcher(LOGIN_PAGE_URL);
        requestDispatcher.forward(request,response);
    }
}
