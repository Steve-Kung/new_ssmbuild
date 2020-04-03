package cn.stevekung.mapper;

import cn.stevekung.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    // CRUD
    public List<Book> selectBooks();
    public Book selectBookById(@Param("bookId") Long bookId);
    public int addBook(Book book);
    public int updateBook(Book book);
    public int deleteBook(@Param("bookId") Long bookId);

}
