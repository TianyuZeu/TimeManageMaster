package com.tmm.controller;

import com.tmm.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("employee")
@Slf4j
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;
}
