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
        response.getWriter().println(name+mobile+email+message);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        ORMForms ormForms = new ORMForms();
        ormForms.setEmail(email);
        ormForms.setMessage(message);
        ormForms.setMobileNumber(Integer.parseInt(mobile));
        ormForms.setName(name);
        entityManager.persist(ormForms);
        entityManager.getTransaction().commit();
        entityManagerFactory.close();
        entityManager.close();

    }

}
