package cn.stevekung.controller;

import cn.stevekung.pojo.Book;
import cn.stevekung.service.BookService;
import cn.stevekung.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {
    @Autowired
    BookServiceImpl bookService;

//    @Autowired
//    @Qualifier("bookServiceImpl")
//    BookService bookService1;

    @GetMapping("/books")
    public String selectBooks(Model model){
        List<Book> books = bookService.selectBooks();
        model.addAttribute("list", books);
        return "allBooks";
    }

    @GetMapping("/toAddPage")
    public String toAddPage(){
        return "addPage";
    }

    // Restful风格
    @PostMapping("/addBook")
    public String addBook(Book book){
        bookService.addBook(book);
        return "redirect:/books";
    }

    @GetMapping("/toUpdatePage/{bookId}")
    public String toUpdatePage(@PathVariable Long bookId, Model model){
        Book book = bookService.selectBookById(bookId);
        model.addAttribute("book", book);
        return "updatePage";
    }

    @PostMapping("/updateBook")
    public String updateBook(Book book){
        bookService.updateBook(book);
        return "redirect:/books";
    }

    @GetMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable Long bookId){
        bookService.deleteBook(bookId);
        return "redirect:/books";
    }

    @PostMapping("/search")
    public String selectBookByBookName(String bookName, Model model){
        Book book = bookService.selectBookByBookName(bookName);
        List<Book> books = new ArrayList<Book>();
        books.add(book);
        if (book == null){
            model.addAttribute("error", "抱歉，没有该书籍");
            books = bookService.selectBooks();
        }
        model.addAttribute("list", books);
        return "allBooks";
    }
}
