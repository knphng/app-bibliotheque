package ch.hesge.programmation.servlet;

import ch.hesge.programmation.domain.Book;
import ch.hesge.programmation.service.ServiceBook;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookServlet extends HttpServlet {

    private ServiceBook serviceBook;

    @Inject
    public BookServlet(ServiceBook serviceBook) {
        this.serviceBook = serviceBook;
    }

    //default contructor
    public BookServlet() { }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listeLivre", serviceBook.listBook());
        request.getRequestDispatcher("WEB-INF/list.jsp").forward(request, response);
    }
}
