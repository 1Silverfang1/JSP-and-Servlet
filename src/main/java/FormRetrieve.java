import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FormRetrieve extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        int findByMobileNumber= Integer.parseInt(request.getParameter("mobileNumber"));
        ORMForms ormForms = entityManager.find(ORMForms.class,findByMobileNumber);
        response.getWriter().println(ormForms);
    //    entityManager.createQuery()
    }
}
