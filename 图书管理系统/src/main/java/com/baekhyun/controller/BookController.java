package com.baekhyun.controller;

import com.baekhyun.model.Book;
import com.baekhyun.service.BookServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/Book")
@Controller
public class BookController {
    @Resource
    BookServiceImpl bookService;

    @RequestMapping("/book.do")
    public String qureyAll(Model model, Book book){
        List<Book> bookList = bookService.qureyAll();
        model.addAttribute("booklist",bookList);
        return "book";
    }

    @RequestMapping(value = "{bId}/updatepage.do",method =RequestMethod.GET)
    public String updatepage(Model model, @PathVariable Integer bId){
        Book book1 = bookService.selectByPrimaryKey(bId);
        model.addAttribute("book",book1);
        return "updatebook";
    }

    @RequestMapping("/update")
    public String updatebook(Model model,Book book){
        bookService.updateByPrimaryKey(book);
        return "redirect:/Book/book.do";
    }

    @RequestMapping(value = "{bId}/delete.do",method = RequestMethod.GET)
    public String deletebook(@PathVariable Integer bId){
        bookService.deleteByPrimaryKey(bId);
        return "redirect:/Book/book.do";
    }

    @RequestMapping("/insertpage")
    public String insertpage(){
        return "insertbook";
    }

    @RequestMapping("/insert")
    public String insertbook(Book book){
        bookService.insert(book);
        return "redirect:/Book/book.do";
    }

    @RequestMapping("/selectbType")
    public String findbook(Model model,String bType,Book book){
        List<Book> bookList = bookService.selectBybookType(bType);
        model.addAttribute("bookList",bookList);
        return "selectbType";
    }

}
