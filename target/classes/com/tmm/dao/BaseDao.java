package com.tmm.dao;

import java.util.List;

public interface BaseDao<T> {

    int insert(T record);

    int delete(String record);

    int update(T record);

    List<T> selectAll();

    T selectById(String id);
}