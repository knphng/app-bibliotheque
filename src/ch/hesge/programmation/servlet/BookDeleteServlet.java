package ch.hesge.programmation.servlet;

import ch.hesge.programmation.Service.ServiceBook;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookDeleteServlet extends HttpServlet {
    private ServiceBook serviceBook;

    @Inject
    public BookDeleteServlet(ServiceBook serviceBook) {
        this.serviceBook = serviceBook;
    }

    public BookDeleteServlet() { }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idBook = Integer.parseInt(request.getParameter("bookId"));
        serviceBook.deleteBook(idBook);
        serviceBook.listBook();
        request.setAttribute("errorDelete", "Ok");
        response.sendRedirect("/listeLivres");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
