package com.cognizant.springlearn.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Stock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int stId;

    private String stCode;

    @Temporal(TemporalType.DATE)
    private Date stDate;

    private double stOpen;
    private double stClose;
    private long stVolume;

    // Getters and setters
}