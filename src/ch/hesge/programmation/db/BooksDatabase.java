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
        Book firstBook = new Book("La Disparition de Stephanie Mailer", "Joël Dicker", " Editions Le Fallois", 2018);
        Book secondBook = new Book("La Vérité sur l’Affaire Harry Quebert", "Joël Dicker", " Editions de Fallois / Age d’Homme", 2012);
        if(serviceBook.listBook().size() <= 0){
            serviceBook.addBook(firstBook);
            serviceBook.addBook(secondBook);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
