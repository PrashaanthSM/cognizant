package com.cognizant.orm_learn.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "salary")
    private double salary;
    @Column(name = "permanent")
    private boolean permanent;
    @Column(name = "date_of_birth")
    private Date dateOfBirth;

    // getters, setters, toString()
}
