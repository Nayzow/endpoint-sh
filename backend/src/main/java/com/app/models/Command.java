package com.app.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "commands")
@Data
public class Command {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

    @ManyToOne
    @JoinColumn(name="id_technology")
    private Technology technology;
}
