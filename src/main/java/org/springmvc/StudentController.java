package org.springmvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/student")
public class StudentController {
    @RequestMapping(value = "/showForm",method = RequestMethod.GET)
    public String showForm(Model model)
    {
        Student student=new Student();
        model.addAttribute("studentModel",student);
        return "studentForm";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("studentModel") Student student)
    {
        System.out.println(student.getFirstName() + " "+student.getLastName());
        return "studentFormConfirm";
    }

}
