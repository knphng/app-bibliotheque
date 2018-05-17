package ch.hesge.programmation.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {

    public static String UserRoleAccepted = "USER";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/connexion.jsp").forward(req,resp);
        req.setAttribute("param","param");
    }
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("username");
        String password = req.getParameter("password");
        try{
            req.login(login,password);
            resp.sendRedirect("index.jsp");
            req.setAttribute("error" ,"");
        }
        catch(ServletException e){
            req.setAttribute("error" ,"Identifiant / mot de passe erroné");
            req.getRequestDispatcher("/WEB-INF/connexion.jsp").forward(req, resp);
        }
    }
}
