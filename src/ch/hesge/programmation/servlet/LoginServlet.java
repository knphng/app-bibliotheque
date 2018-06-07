package ch.hesge.programmation.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    public static String UserRoleAccepted = "USER";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            request.login(login, password);
            HttpSession session = request.getSession();
            if (request.isUserInRole(UserRoleAccepted) == true) {
                session.setAttribute("status", "ok");
                request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
            } else {
                session.setAttribute("status", "wrongRole");
                request.logout();
                request.getSession().invalidate();
                request.getRequestDispatcher("WEB-INF/errors/403.jsp").forward(request, response);;
            }
        } catch (ServletException e) {
            request.setAttribute("status", "Error : Identifiant / mot de passe erroné");
            request.getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession(true);
        request.getRequestDispatcher("WEB-INF/connexion.jsp").forward(request, response);
        request.setAttribute("param", "param");
    }
}
