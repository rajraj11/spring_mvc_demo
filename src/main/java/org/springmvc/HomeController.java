package org.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
