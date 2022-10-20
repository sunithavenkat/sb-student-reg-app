package com.hcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hcl.model.Student;

@Controller
public class StudentController {
    //1.Loading the form
	@GetMapping(value= {"/","/register"})
	public String loadForm(Model model) {
		Student s=new Student();
		//send form is loading
		model.addAttribute("student",s);
		
		//logical view name
		return "index";
		
	}
	//2.sending data from controller to UI
	@PostMapping(value="/register")
	public String handleSubmitBtn(@ModelAttribute("student")Student student,Model model) {
		//System.out.println(s);
		model.addAttribute("sucessMsg","Registerd Successfully");
		return "index";
		
	}
}
