package ch.hesge.programmation.servlet;

import ch.hesge.programmation.domain.Book;
import ch.hesge.programmation.service.ServiceBook;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookCreateServlet extends HttpServlet {
    private ServiceBook serviceBook;

    @Inject
    public BookCreateServlet(ServiceBook serviceBook) {
        this.serviceBook = serviceBook;
    }

    //default contructor
    public BookCreateServlet() { }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String editor = request.getParameter("editor");
        int year = Integer.parseInt(request.getParameter("year"));
        Book newOne = new Book(title, author, editor, year);
        serviceBook.addBook(newOne);
        serviceBook.listBook();
        request.setAttribute("status", "created");
        response.sendRedirect(request.getContextPath()+"/books?status=created");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/create.jsp").forward(request, response);

    }
}
