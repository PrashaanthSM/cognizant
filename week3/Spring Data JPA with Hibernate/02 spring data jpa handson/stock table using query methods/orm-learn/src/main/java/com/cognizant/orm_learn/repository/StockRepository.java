package com.cognizant.springlearn.repository;

import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.cognizant.springlearn.model.Stock;

public interface StockRepository extends JpaRepository<Stock, Integer> {

    List<Stock> findByStCodeAndStDateBetween(String code, Date start, Date end);
    List<Stock> findByStCodeAndStCloseGreaterThan(String code, double price);
    List<Stock> findTop3ByOrderByStVolumeDesc();
    List<Stock> findTop3ByStCodeOrderByStCloseAsc(String code);
}