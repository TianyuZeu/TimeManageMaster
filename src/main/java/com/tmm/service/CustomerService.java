package com.tmm.service;

import com.tmm.dao.CustomerDao;
import com.tmm.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    CustomerDao customerDao;

    public int insert(Customer customer){
        return customerDao.insert(customer);
    }

}
