package com.servlet.orm;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Logout extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session= request.getSession();
        session.removeAttribute("admin");
        session.removeAttribute("SessionId");
        session.invalidate();
        response.sendRedirect("./LoginPage.jsp");
    }
}
