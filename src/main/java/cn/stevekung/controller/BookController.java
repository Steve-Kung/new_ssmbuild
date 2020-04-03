package cn.stevekung.controller;

import cn.stevekung.pojo.Book;
import cn.stevekung.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BookController {
    @Autowired
    BookServiceImpl bookService;
    @GetMapping("/books")
    @ResponseBody
    public List<Book> selectBooks(Model model){
        List<Book> books = bookService.selectBooks();
        return books;
    }
}
