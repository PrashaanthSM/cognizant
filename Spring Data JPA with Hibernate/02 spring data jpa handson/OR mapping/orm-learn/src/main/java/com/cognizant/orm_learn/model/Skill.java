package com.cognizant.orm_learn.model;
import javax.persistence.*;

@Entity
@Table(name = "skill")
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "name")
    private String name;

    // getters, setters, toString()
}
