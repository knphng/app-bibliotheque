package ch.hesge.programmation.db;

import ch.hesge.programmation.service.ServiceBook;
import ch.hesge.programmation.domain.Book;
import javax.inject.Inject;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class BooksDatabase implements ServletContextListener {
    private final ServiceBook serviceBook;

    @Inject
    public BooksDatabase(ServiceBook servBook) {
        this.serviceBook = servBook;
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        Book bookOne = new Book("The President Is Missing", "Bill Clinton and James Patterson", " Little, Brown and Compagny and Knopf", 2018);
        Book bookTwo = new Book("Oh, The Places you'll go !", "Dr. Seuss", " Random House", 1990);
        Book bookThree = new Book("The Outsider", "Stephen King", " Scribner", 2018);
        Book bookFour = new Book("12 Rules for life", "Jordan B Petterson", " Random House Canada", 2018);
        Book bookFive = new Book("The Subtle Art of Not Giving a F*ck", "Mark Manson", "Harper", 2016);
        if(serviceBook.listBook().size() <= 0){
            serviceBook.addBook(bookOne);
            serviceBook.addBook(bookTwo);
            serviceBook.addBook(bookThree);
            serviceBook.addBook(bookFour);
            serviceBook.addBook(bookFive);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
