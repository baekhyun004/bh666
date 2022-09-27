package com.baekhyun.controller;

import com.baekhyun.model.Reader;
import com.baekhyun.service.ReaderServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Reader")
public class ReaderController {

    @Resource
    ReaderServiceImpl readerService;

    @RequestMapping("/reader.do")
    public String qureyAll(Model model, Reader reader){
        List<Reader> readers = readerService.qureyAll();
        model.addAttribute("readerlist",readers);
        return "reader";
    }

    @RequestMapping("{sId}/updatereader.do")
    public String updatepage(Model model,@PathVariable Integer sId){
        Reader reader = readerService.selectByPrimaryKey(sId);
        model.addAttribute("reader",reader);
        return "updatereader";
    }

    @RequestMapping("/updatereader")
    public String upadatereader(Reader reader){
        readerService.updateByPrimaryKey(reader);
        return "redirect:/Reader/reader.do";
    }

    @RequestMapping("{sId}/delete.do")
    public String delete(@PathVariable Integer sId){
        readerService.deleteByPrimaryKey(sId);
        return "redirect:/Reader/reader.do";
    }

    @RequestMapping("/insertpage.do")
    public String insertpage(){
        return "insertreader";
    }

    @RequestMapping("/insertreader")
    public String insertreader(Reader reader){
        readerService.insert(reader);
        return "redirect:/Reader/reader.do";
    }

    @RequestMapping("/selectreader")
    public String selectbysId(Model model, Integer sId){
        Reader reader = readerService.selectByPrimaryKey(sId);
        model.addAttribute("reader1",reader);
        return "selectreader";
    }



}
