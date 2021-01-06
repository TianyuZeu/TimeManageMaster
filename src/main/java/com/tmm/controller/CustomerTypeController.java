package com.tmm.controller;

import com.tmm.service.CustomerTypeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("customerType")
@Slf4j
public class CustomerTypeController {
    @Autowired
    CustomerTypeService customerTypeService;

}
