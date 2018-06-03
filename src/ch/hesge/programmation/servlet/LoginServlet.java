package ch.hesge.programmation.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    public static String UserRoleAccepted = "USER";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            request.login(login, password);
            response.sendRedirect("/");
            request.setAttribute("status", "ok");
            request.getSession().setAttribute("authentified", true);
        } catch (ServletException e) {
            request.setAttribute("status", "Error : Identifiant / mot de passe erroné");
            request.getRequestDispatcher("WEB-INF/connexion.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/connexion.jsp").forward(request, response);
        request.setAttribute("param", "param");
    }
}
