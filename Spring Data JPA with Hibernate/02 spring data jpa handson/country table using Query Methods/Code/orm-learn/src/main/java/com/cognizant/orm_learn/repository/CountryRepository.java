package com.cognizant.orm_learn.repository;

import com.cognizant.orm_learn.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CountryRepository extends JpaRepository<Country, String> {
    List<Country> findByNameContaining(String keyword);
    // Query to find countries containing a string
    List<Country> findByNameContaining(String keyword);

    // Query to find countries containing a string and order by name
    List<Country> findByNameContainingOrderByNameAsc(String keyword);

    // Query to find countries starting with a specific alphabet
    List<Country> findByNameStartingWith(String alphabet);
}

