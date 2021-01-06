package com.tmm.controller;

import com.tmm.service.CustomerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("customer")
@Slf4j
public class CustomerController {
    @Autowired
    CustomerService customerService;
}
