package ch.hesge.programmation.service;

import ch.hesge.programmation.domain.Book;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.transaction.Transactional;
import java.util.List;

@Stateless
public class ServiceBook {

    @PersistenceContext
    private EntityManager em;

    public List<Book> listBook () {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Book> cq = cb.createQuery(Book.class);
        cq.from(Book.class);
        TypedQuery<Book> q = em.createQuery(cq);
        List<Book> books = q.getResultList();
        return books;
    }

    @Transactional
    public void addBook(Book b){
        em.persist(b);
    }

    public void updateBook(int id, String title, String author, String editor, int year){
        Book book = em.find(Book.class,id);
        book.setTitle(title);
        book.setAuthor(author);
        book.setEditor(editor);
        book.setYear(year);
        em.merge(book);
    }

    public void deleteBook(int id){
        Book book = em.find(Book.class,id);
        em.remove(book);
    }

}
