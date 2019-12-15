package Servlet;

import OrmEntity.ContactForm;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Constants.Constants.*;
import static Constants.URLConstants.CONTACT_US_PAGE;
import static Constants.URLConstants.FORM_SUBMITTED;

public class FormSubmit extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse  response) throws ServletException, IOException {
        request.removeAttribute("Form");
        RequestDispatcher requestDispatcher= request.getRequestDispatcher(CONTACT_US_PAGE);
        requestDispatcher.forward(request,response);
    }
    public void doPost(HttpServletRequest request , HttpServletResponse  response) throws IOException, ServletException {

            String name = request.getParameter(NAME);
            String mobile = request.getParameter(MOBILE_NUMBER);
            String email = request.getParameter(EMAIL);
            String message = request.getParameter(FEEDBACK);
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
            request.getSession().setAttribute("Form", "Submitted");
            response.sendRedirect("formSubmitted");
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher(FORM_SUBMITTED);
//            requestDispatcher.forward(request, response);
        }
}

