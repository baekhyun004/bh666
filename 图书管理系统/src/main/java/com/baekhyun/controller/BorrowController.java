package com.baekhyun.controller;

import com.baekhyun.model.Borrow;
import com.baekhyun.service.BorrowServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Borrow")
public class BorrowController {
    @Resource
    BorrowServiceImpl borrowService;

    @RequestMapping("/borrow.do")
    public String qureyAll(Model model, Borrow borrow){
        List<Borrow> borrows = borrowService.qureyAll();
        model.addAttribute("borrowlist",borrows);
        return "borrow";
    }

    @RequestMapping("/insertpage")
    public String insertpage(){
        return "insertborrow";
    }

    @RequestMapping("/insertborrow")
    public String insertborrow(Borrow borrow){
        borrowService.insert(borrow);
        return "redirect:/Borrow/borrow.do";
    }

    @RequestMapping("/selectborrow")
    public String selectbybId(Model model,Integer bId){
        List<Borrow> borrows = borrowService.selectbybId(bId);
        model.addAttribute("borrows",borrows);
        return "selectborrow";
    }
}
