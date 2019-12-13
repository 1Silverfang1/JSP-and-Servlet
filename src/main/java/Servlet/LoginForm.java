package Servlet;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Servlet.Constants.*;

public class LoginForm extends HttpServlet {
//    public void doGet()

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {
        String name = httpServletRequest.getParameter(USERNAME);
        String password = httpServletRequest.getParameter(PASSWORD);
        String email = httpServletRequest.getParameter(EMAIL);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory(PERSISTANCE_UNIT);
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        AdminTable adminTable = entityManager.find(AdminTable.class, name);
        if (adminTable == null) {
            httpServletRequest.getSession().setAttribute(ERROR_ATTRIBUTE,ERROR_MESSAGE);
            httpServletResponse.sendRedirect(LOGIN_PAGE_URL);
        } else {
            String Administrator = adminTable.getUsername();
            String Password = adminTable.getPassword();
            String MailAddress= adminTable.getEmail();
            if(Administrator.equals(name)&&Password.equals(password)&&MailAddress.equals(email))
            {
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute(SESSION_ID_ATTRIBUTE, session.getId());
                session.setAttribute(ADMIN_ATTRIBUTE,Administrator);
                httpServletResponse.sendRedirect(ADMIN_PAGE);
            }
                else {

                httpServletRequest.getSession().setAttribute(ERROR_ATTRIBUTE, ERROR_MESSAGE);
                httpServletResponse.sendRedirect(LOGIN_PAGE_URL);
            }
            //     RequestDispatcher requestDispatcher= httpServletRequest.getRequestDispatcher("./LoginPage.jsp");
            //    requestDispatcher.forward(httpServletRequest,httpServletResponse);
        }
    }
}
