package com.tmm.dao;

import com.tmm.entity.Activity;

import java.util.List;

public interface ActivityDao extends BaseDao<Activity> {
    @Override
    int insert(Activity record);

    @Override
    int delete(String record);

    @Override
    int update(Activity record);

    @Override
    List<Activity> selectAll();

    @Override
    Activity selectById(String id);
}