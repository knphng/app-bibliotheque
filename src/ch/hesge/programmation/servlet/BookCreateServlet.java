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
        //try {
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String editor = request.getParameter("editor");
            int year = Integer.parseInt(request.getParameter("year"));
            Book newOne = new Book(title, author, editor, year);
            serviceBook.addBook(newOne);
            serviceBook.listBook();
            request.setAttribute("status", "created");
            //response.sendRedirect(request.getContextPath()+"/WEB-INF/create");
        request.getRequestDispatcher(request.getContextPath()+"/WEB-INF/create.jsp").forward(request, response);

        /*} catch (ServletException e) {
            request.setAttribute("status", "failed");
            request.getRequestDispatcher("/WEB-INF/create.jsp").forward(request, response);
        }*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(request.getContextPath()+"/WEB-INF/create.jsp").forward(request, response);

    }
}
