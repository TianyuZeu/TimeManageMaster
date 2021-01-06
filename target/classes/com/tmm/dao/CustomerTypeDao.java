package com.tmm.dao;

import com.tmm.entity.CustomerType;

import java.util.List;

public interface CustomerTypeDao extends BaseDao<CustomerType>  {
    @Override
    int insert(CustomerType record);

    @Override
    int delete(String record);

    @Override
    int update(CustomerType record);

    @Override
    List<CustomerType> selectAll();

    @Override
    CustomerType selectById(String id);
}