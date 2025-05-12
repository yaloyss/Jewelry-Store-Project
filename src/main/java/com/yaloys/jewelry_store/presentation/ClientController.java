package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.ClientRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClientController {
    private final ClientRepository clientRepository;
    public ClientController(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }
    @GetMapping("/client")
    public String getClients(Model model) {
        model.addAttribute("clients", clientRepository.findAll());
        return "client";
    }
}
