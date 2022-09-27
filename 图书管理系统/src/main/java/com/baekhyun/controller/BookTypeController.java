package com.baekhyun.controller;

import com.baekhyun.model.BookType;
import com.baekhyun.service.BookTypeServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/BookType")
public class BookTypeController {

    @Resource
    BookTypeServiceImpl bookTypeService;

    @RequestMapping("/booktype.do")
    public String qureyAll(Model model, BookType bookType){
        List<BookType> bookTypes = bookTypeService.qureyAll();
        model.addAttribute("booktypelist",bookTypes);
        return "booktype";
    }

    @RequestMapping(value = "{bType}/updatepage.do",method = RequestMethod.GET)
    public String updatepage(Model model,@PathVariable String bType){
        BookType bookType = bookTypeService.selectByPrimaryKey(bType);
        model.addAttribute("booktype",bookType);
        return "updatebooktype";
    }

    @RequestMapping("/update.do")
    public String updatebookType(BookType bookType){
        bookTypeService.updateByPrimaryKey(bookType);
        return "redirect:/BookType/booktype.do";
    }

    @RequestMapping(value = "{bType}/delete.do",method = RequestMethod.GET)
    public String delete(@PathVariable String bType){
        bookTypeService.deleteByPrimaryKey(bType);
        return "redirect:/BookType/booktype.do";
    }

    @RequestMapping("/insertpage.do")
    public String insertpage(){
        return "insertbooktype";
    }

    @RequestMapping("/insertbooktype.do")
    public String insertbooktype(BookType bookType){
        bookTypeService.insert(bookType);
        return "redirect:/BookType/booktype.do";
    }
}
