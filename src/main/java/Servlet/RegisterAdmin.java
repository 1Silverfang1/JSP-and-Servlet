package Servlet;

import Encryption.bcrypt;
import OrmEntity.AdminTable;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Constants.Constants.*;
import static Constants.Constants.FEEDBACK;
import static Constants.URLConstants.*;
@WebServlet("/RegisterUser")
public class RegisterAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= req.getRequestDispatcher(REGISTER_URL);
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        bcrypt encryption= new bcrypt();
        String name= req.getParameter(NAME);
        String password= encryption.generateHashedPassword(req.getParameter(PASSWORD));
        String email= req.getParameter(EMAIL);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory(PERSISTANCE_UNIT);
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        AdminTable adminTable= entityManager.find(AdminTable.class,name);
        if(adminTable!=null)
        {
            req.setAttribute(REGISTER_MESSAGE,USER_EXIST);
            RequestDispatcher requestDispatcher= req.getRequestDispatcher(REGISTER_URL);
            requestDispatcher.forward(req,resp);
        }
        else
        {
            AdminTable admin= new AdminTable();
            admin.setEmail(email);
            admin.setPassword(password);
            admin.setUsername(name);
            entityManager.getTransaction().begin();
            entityManager.persist(admin);
            entityManager.getTransaction().commit();
            entityManagerFactory.close();
            entityManager.close();
            req.setAttribute(ADMIN_ATTRIBUTE,ADMIN_MESSAGE);
            RequestDispatcher requestDispatcher= req.getRequestDispatcher(SUCCESS_REGISTERATION);
            requestDispatcher.forward(req,resp);
        }

    }
}
