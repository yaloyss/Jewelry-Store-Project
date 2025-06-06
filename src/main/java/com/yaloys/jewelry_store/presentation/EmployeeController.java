package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.Employee;
import com.yaloys.jewelry_store.data.EmployeeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController {

    private final EmployeeRepository employeeRepository;

    public EmployeeController(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @GetMapping("/employee")
    public String getEmployees(@RequestParam(value = "search", required = false) String search, Model model)
    {
        List<Employee> employees;

        if (search != null && !search.trim().isEmpty())
        {
            String searchTerm = search.trim();
            employees = employeeRepository.findByFullNameContainingIgnoreCase(searchTerm);
            model.addAttribute("searchedObject", searchTerm);
        } else {
            employees = (List<Employee>) employeeRepository.findAll();
        }

        model.addAttribute("employees", employees);
        return "employee";
    }
}
