package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.BillRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BillController {
    private final BillRepository billRepository;
    public BillController(BillRepository billRepository) {
        this.billRepository = billRepository;
    }
    @GetMapping("/bill")
    public String getClients(Model model) {
        model.addAttribute("bills", billRepository.findAll());
        return "bill";
    }
}
