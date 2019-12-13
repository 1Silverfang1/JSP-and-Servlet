package Servlet;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FormRetrieve extends HttpServlet {

    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
//        int findByMobileNumber= Integer.parseInt(request.getParameter("mobileNumber"));
//        com.servlet.orm.ContactForm contactForm = entityManager.find(com.servlet.orm.ContactForm.class,findByMobileNumber);
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<ContactForm> criteriaQuery= criteriaBuilder.createQuery(ContactForm.class);
        Root<ContactForm> root = criteriaQuery.from(ContactForm.class);
        criteriaQuery.select(root);
        TypedQuery<ContactForm> query = entityManager.createQuery(criteriaQuery);
        List<ContactForm> results = query.getResultList();
        //RequestDispatcher requestDispatcher= request.getRequestDispatcher("./RetrieveData.jsp");
       // requestDispatcher.forward(request,response);

       //response.getWriter().println("results");
      request.getSession().setAttribute(Constants.FORM_RESULT,results);
       response.sendRedirect(Constants.RETRIEVE_PAGE);
    }
}
