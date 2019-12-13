package com.servlet.orm;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginForm extends HttpServlet {
//    public void doGet()

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {
        String name = httpServletRequest.getParameter("Username");
        String password = httpServletRequest.getParameter("Password");
        String email = httpServletRequest.getParameter("Email");
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        AdminTable adminTable = entityManager.find(AdminTable.class, name);
        if (adminTable == null) {
            httpServletRequest.getSession().setAttribute("error","Invalid Credential");
            httpServletResponse.sendRedirect("./LoginPage.jsp");
        } else {
            String Administrator = adminTable.getUsername();
            String Password = adminTable.getPassword();
            String MailAddress= adminTable.getEmail();
            if(Administrator.equals(name)&&Password.equals(password)&&MailAddress.equals(email))
            {
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute("SessionId", session.getId());
                session.setAttribute("admin",Administrator);
                httpServletResponse.sendRedirect("./admin.jsp");
            }
                else {

                httpServletRequest.getSession().setAttribute("error", "Invalid Credential");
                httpServletResponse.sendRedirect("./LoginPage.jsp");
            }
            //     RequestDispatcher requestDispatcher= httpServletRequest.getRequestDispatcher("./LoginPage.jsp");
            //    requestDispatcher.forward(httpServletRequest,httpServletResponse);
        }
    }
}
