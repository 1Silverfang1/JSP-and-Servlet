package com.servlet.orm;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FormSubmit extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse  response) throws IOException {
        String name= request.getParameter("Name");
        String mobile= request.getParameter("Mobile");
        String email= request.getParameter("Email");
        String message= request.getParameter("MessageField");
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
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

        response.getWriter().println("<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n" +
                "    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\n" +
                "    <link rel=\"stylesheet\" href=\"CSS/landingpage.css\">\n" +
                "    <title>Landing Page</title>\n" +
                "</head>");
        response.getWriter().println("<br><br><br><br><h1 class='text-center text-primary'>Form Submitted</h1>");
        response.getWriter().println("<a  href='index.jsp' class='text-center'>You are Being Redirected If Not Redirected Click here</a>");
        response.getWriter().println("<iframe class='mx-auto' src=\"https://giphy.com/embed/3oEjI6SIIHBdRxXI40\" width=\"200\" height=\"200\" frameBorder=\"0\" class=\"giphy-embed\" allowFullScreen></iframe><p><a href=\"https://giphy.com/gifs/mashable-3oEjI6SIIHBdRxXI40\"></a></p>");
        response.getWriter().println("</body>\n" +
                "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n" +
                "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n" +
                "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n" +
                "\n" +
                "</html>");
        response.setHeader("Refresh", "5;url=./index.jsp");
    }

}
