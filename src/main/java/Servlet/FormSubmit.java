package Servlet;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Servlet.Constants.*;

public class FormSubmit extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse  response) throws IOException {
        String name= request.getParameter(NAME);
        String mobile= request.getParameter(MOBILE_NUMBER);
        String email= request.getParameter(EMAIL);
        String message= request.getParameter(FEEDBACK);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory(PERSISTANCE_UNIT);
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        ContactForm contactForm = new ContactForm();
        contactForm.setEmail(email);
        contactForm.setMessage(message);
        contactForm.setMobileNumber(mobile);
        contactForm.setName(name);
        entityManager.persist(contactForm);
        entityManager.getTransaction().commit();
        entityManagerFactory.close();
        entityManager.close();

        response.getWriter().println(HEAD_FOR_SUBMIT);
        response.getWriter().println("<br><br><br><br><h1 class='text-center text-primary'>Form Submitted</h1>");
        response.getWriter().println("<a  href='index.jsp' class='text-center'>You are Being Redirected If Not Redirected Click here</a>");
        response.getWriter().println("<iframe class='mx-auto' src=\"https://giphy.com/embed/3oEjI6SIIHBdRxXI40\" width=\"200\" height=\"200\" frameBorder=\"0\" class=\"giphy-embed\" allowFullScreen></iframe><p><a href=\"https://giphy.com/gifs/mashable-3oEjI6SIIHBdRxXI40\"></a></p>");
        response.getWriter().println(BODY_FOR_SUBMIT);
        response.setHeader("Refresh", "1;url=./index.jsp");
    }

}
