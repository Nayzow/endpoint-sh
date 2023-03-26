package com.app.controllers;

import com.app.models.Command;
import com.app.services.CommandService;
import jakarta.websocket.server.PathParam;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;


@RestController
@RequestMapping("/api/commands")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class CommandController {
    private final CommandService commandService;

    @GetMapping
    public List<Command> getAll(@RequestParam(required = false) String technologyName) {
        return commandService.findAll(technologyName);
    }

    @GetMapping("/{id}")
    public Command getById(@PathVariable Long id) {
        return commandService.findById(id).orElse(null);
    }

    @PostMapping
    public void add(@RequestBody Command command) {
        commandService.createCommand(command);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        commandService.deleteById(id);
    }
}
