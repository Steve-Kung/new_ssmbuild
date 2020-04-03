package cn.stevekung.service;

import cn.stevekung.mapper.BookMapper;
import cn.stevekung.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BookServiceImpl implements BookService {

    @Autowired
    BookMapper bookMapper;

    public List<Book> selectBooks() {
        return bookMapper.selectBooks();
    }

    public Book selectBookById(Long bookId) {
        return bookMapper.selectBookById(bookId);
    }

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public int deleteBook(Long bookId) {
        return bookMapper.deleteBook(bookId);
    }
}
