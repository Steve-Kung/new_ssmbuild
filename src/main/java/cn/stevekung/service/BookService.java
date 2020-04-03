package cn.stevekung.service;

import cn.stevekung.pojo.Book;

import java.util.List;

public interface BookService {
    public List<Book> selectBooks();
    public Book selectBookById(Long bookId);
    public int addBook(Book book);
    public int updateBook(Book book);
    public int deleteBook(Long bookId);
}
