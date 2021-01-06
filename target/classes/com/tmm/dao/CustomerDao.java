package com.tmm.dao;

import com.tmm.entity.Customer;

import java.util.List;

public interface CustomerDao extends BaseDao<Customer> {
    @Override
    int insert(Customer record);

    @Override
    int delete(String record);

    @Override
    int update(Customer record);

    @Override
    List<Customer> selectAll();

    @Override
    Customer selectById(String id);
}