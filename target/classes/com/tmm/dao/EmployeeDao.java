package com.tmm.dao;

import com.tmm.entity.Employee;

import java.util.List;

public interface EmployeeDao extends BaseDao<Employee>{
    @Override
    int insert(Employee record);

    @Override
    int delete(String record);

    @Override
    int update(Employee record);

    @Override
    List<Employee> selectAll();

    @Override
    Employee selectById(String id);
}