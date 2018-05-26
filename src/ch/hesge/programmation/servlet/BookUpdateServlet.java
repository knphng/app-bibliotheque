package ch.hesge.programmation.servlet;

import ch.hesge.programmation.service.ServiceBook;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.Charset;

public class BookUpdateServlet extends HttpServlet {
    private ServiceBook serviceBook;

    @Inject
    public BookUpdateServlet(ServiceBook serviceBook) {
        this.serviceBook = serviceBook;
    }

    public BookUpdateServlet() { }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idBook = Integer.parseInt(request.getParameter("idInput"));
        String title = request.getParameter("titleInput");
        String author = request.getParameter("authorInput");
        String editor = request.getParameter("editorInput");
        int year = Integer.parseInt(request.getParameter("yearInput"));

        serviceBook.updateBook(idBook, title, author, editor, year);
        serviceBook.listBook();
        request.setAttribute("errorUpdate", "Ok");
        response.sendRedirect("/books");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

