import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginForm extends HttpServlet {
    public void doPost(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse) throws IOException {
        String name = httpServletRequest.getParameter("Username");
        String password = httpServletRequest.getParameter("Password");
        String email = httpServletRequest.getParameter("Email");
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        AdminTable adminTable = entityManager.find(AdminTable.class, name);
        if (adminTable == null) {
            httpServletResponse.setHeader("Refresh", "1;url=./error.jsp");
        } else {
            String Administrator = adminTable.getUsername();
            String Password = adminTable.getPassword();
            String MailAddress= adminTable.getEmail();
            if(Administrator.equals(name)&&Password.equals(password)&&MailAddress.equals(email))
            httpServletResponse.getWriter().println(adminTable + " " + ";lskjhgfd");
            else
                httpServletResponse.setHeader("Refresh", "1;url=./error.jsp");
        }
    }
}
