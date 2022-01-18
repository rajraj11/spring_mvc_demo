package org.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home()
    {
        return "home";
    }
    @GetMapping("/showInputForm")
    public String form()
    {
        return "showForm";
    }
    @PostMapping("/showFormData")
    public String show()
    {
        return "showData";
    }
    @PostMapping("/processFromV2")
    public String toUpperCase(HttpServletRequest httpServletRequest, Model model)
    {
        String theName=httpServletRequest.getParameter("studentName");
        theName=theName.toUpperCase();
        String message = "yo yo "+ theName +" !";
        model.addAttribute("thename",theName);
        model.addAttribute("Message",message);
        return "showData2";
    }
    @PostMapping("/processFromV3")
    public String toUpperCase3(@RequestParam("studentName") String theName, Model model)
    {
        theName=theName.toUpperCase();
        String message = "yo yo "+ theName +" !";
        model.addAttribute("thename",theName);
        model.addAttribute("Message",message);
        return "showData3";
    }
}
