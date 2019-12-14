package Servlet;

import Encryption.bcrypt;
import OrmEntity.AdminTable;

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

import static Constants.Constants.*;
import static Constants.URLConstants.*;
public class LoginForm extends HttpServlet {
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= httpServletRequest.getRequestDispatcher(LOGIN_PAGE_URL);
        requestDispatcher.forward(httpServletRequest,httpServletResponse);
    }

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {
        String name = httpServletRequest.getParameter(USERNAME);
        String password = httpServletRequest.getParameter(PASSWORD);
        String email = httpServletRequest.getParameter(EMAIL);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory(PERSISTANCE_UNIT);
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        AdminTable adminTable = entityManager.find(AdminTable.class, name);
        if (adminTable == null) {
           RequestDispatcher requestDispatcher= httpServletRequest.getRequestDispatcher(REGISTER_URL);
           requestDispatcher.forward(httpServletRequest,httpServletResponse);
        } else {
            String Administrator = adminTable.getUsername();
            String Password = adminTable.getPassword();
            String MailAddress= adminTable.getEmail();
            bcrypt decrypt= new bcrypt();
            if(decrypt.decryptHashedPassword(password,Password))
            if(Administrator.equals(name)&&MailAddress.equals(email))
            {
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute(SESSION_ID_ATTRIBUTE, session.getId());
                session.setAttribute(ADMIN_ATTRIBUTE,Administrator);
                httpServletResponse.sendRedirect(ADMIN_PAGE);
            }
                else
                    {
                        httpServletRequest.setAttribute(ERROR_ATTRIBUTE,ERROR_MESSAGE);
                RequestDispatcher requestDispatcher= httpServletRequest.getRequestDispatcher(LOGIN_PAGE_URL);
                requestDispatcher.forward(httpServletRequest,httpServletResponse);
            }
        }
    }
}
