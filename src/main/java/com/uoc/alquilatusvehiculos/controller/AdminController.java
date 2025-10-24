package com.uoc.alquilatusvehiculos.controller;

import com.uoc.alquilatusvehiculos.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final ClienteRepository clienteRepo;
    private final VehiculoRepository vehiculoRepo;
    private final ExtraRepository extraRepo;
    private final AlquilerRepository alquilerRepo;

    public AdminController(ClienteRepository c, VehiculoRepository v, ExtraRepository e, AlquilerRepository a) {
        this.clienteRepo = c; this.vehiculoRepo = v; this.extraRepo = e; this.alquilerRepo = a;
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("titulo","Bienvenido al panel de administración");
        return "admin/dashboard";
    }

    @GetMapping("/clientes")
    public String clientes(Model model) {
        model.addAttribute("titulo","Clientes");
        model.addAttribute("items", clienteRepo.findAll());
        return "admin/clientes";
    }

    @GetMapping("/vehiculos")
    public String vehiculos(Model model) {
        model.addAttribute("titulo","Vehículos");
        model.addAttribute("items", vehiculoRepo.findAll());
        return "admin/vehiculos";
    }

    @GetMapping("/extras")
    public String extras(Model model) {
        model.addAttribute("titulo","Extras");
        model.addAttribute("items", extraRepo.findAll());
        return "admin/extras";
    }

    @GetMapping("/alquileres")
    public String alquileres(Model model) {
        model.addAttribute("titulo","Alquileres");
        model.addAttribute("items", alquilerRepo.findAll());
        return "admin/alquileres";
    }
}
