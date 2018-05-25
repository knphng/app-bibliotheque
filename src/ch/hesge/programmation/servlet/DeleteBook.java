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
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

@WebServlet("/deleteBook")
public class DeleteBook extends HttpServlet {
    private final ServiceBook serviceBook;

    @Inject
    public DeleteBook(ServiceBook serviceBook) {
        this.serviceBook = serviceBook;
    }

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
