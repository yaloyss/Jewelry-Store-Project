package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.EmployeeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {
    private final EmployeeRepository employeeRepository;
    public EmployeeController(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }
    @GetMapping("/employee")
    public String getEmployees(Model model) {
        model.addAttribute("employees", employeeRepository.findAll());
        return "employee";
    }

}
