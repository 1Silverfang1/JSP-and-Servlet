import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FormRetrieve extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        int findByMobileNumber= Integer.parseInt(request.getParameter("mobileNumber"));
        ContactForm contactForm = entityManager.find(ContactForm.class,findByMobileNumber);
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<ContactForm> criteriaQuery= criteriaBuilder.createQuery(ContactForm.class);
        Root<ContactForm> root = criteriaQuery.from(ContactForm.class);
        criteriaQuery.select(root);
        TypedQuery<ContactForm> query = entityManager.createQuery(criteriaQuery);
        List<ContactForm> results = query.getResultList();
        response.getWriter().println(results);
        response.getWriter().println(contactForm);
    //    entityManager.createQuery()
    }
}
