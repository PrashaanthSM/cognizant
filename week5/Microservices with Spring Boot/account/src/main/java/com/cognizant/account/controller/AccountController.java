package com.cognizant.account.controller;

import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/accounts")
public class AccountController {

    @GetMapping("/{number}")
    public Map<String, Object> getAccountByNumber(@PathVariable String number) {
        return Map.of(
                "number", number,
                "type", "savings",
                "balance", 100000
        );
    }
}
