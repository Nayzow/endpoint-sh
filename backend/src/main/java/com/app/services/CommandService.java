package com.app.services;

import com.app.models.Command;
import com.app.repositories.CommandRepository;
import io.micrometer.common.util.StringUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CommandService {
    private final CommandRepository commandRepository;

    public List<Command> findAll(String technologyName) {
        if(StringUtils.isNotBlank(technologyName)) {
            return this.commandRepository.findByTechnologyName(technologyName);
        }
        return commandRepository.findAll();
    }
    public void createCommand(Command command) {
        commandRepository.save(command);
    }

    public void deleteById(Long id) {
        commandRepository.deleteById(id);
    }

    public Optional<Command> findById(Long id) {
        return commandRepository.findById(id);
    }
}
