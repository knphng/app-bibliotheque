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

@WebServlet("/listeLivres")
public class ListeLivres extends HttpServlet {

    private ServiceBook serviceBook;
    private List<Book> lstBooks;

    @Inject
    public ListeLivres(ServiceBook servBook) {
        this.serviceBook = servBook;
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        lstBooks = serviceBook.listBook();
        request.setAttribute("listeLivre", lstBooks);
        request.getRequestDispatcher("WEB-INF/liste.jsp").forward(request, response);
    }
}
