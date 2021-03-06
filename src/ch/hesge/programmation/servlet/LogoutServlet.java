package ch.hesge.programmation.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.logout();
        request.getSession().invalidate();
//        response.sendRedirect("/WEB-INF/home.jsp");
        request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
    }
}
