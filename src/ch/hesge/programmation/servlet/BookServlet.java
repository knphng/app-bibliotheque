package ch.hesge.programmation.servlet;

import ch.hesge.programmation.Domain.Book;
import ch.hesge.programmation.Service.ServiceBook;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookServlet extends HttpServlet {

    private ServiceBook serviceBook;
    private List<Book> lstBooks;

    @Inject
    public BookServlet(ServiceBook servBook) {
        this.serviceBook = servBook;
    }

    //default contructor
    public BookServlet() {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        lstBooks = serviceBook.listBook();
        request.setAttribute("listeLivre", lstBooks);
        request.getRequestDispatcher("WEB-INF/list.jsp").forward(request, response);
    }
}
