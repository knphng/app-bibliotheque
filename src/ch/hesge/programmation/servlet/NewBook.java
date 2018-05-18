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
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

@WebServlet("/newBook")
public class NewBook extends HttpServlet {
    private ServiceBook serviceBook;

    @Inject
    public NewBook(ServiceBook servBook) {
        this.serviceBook = servBook;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String editor = request.getParameter("editor");
            int year = Integer.parseInt(request.getParameter("year"));
            Book newOne = new Book(title, author, editor, year);
            serviceBook.addBook(newOne);
            serviceBook.listBook();
            request.setAttribute("error" ,"Ok");
            request.getRequestDispatcher("/WEB-INF/nouveau.jsp").forward(request, response);
        }
        catch(ServletException e){
            request.setAttribute("error" ,"Fail");
            request.getRequestDispatcher("/WEB-INF/nouveau.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/nouveau.jsp").forward(request,response);
    }
}
