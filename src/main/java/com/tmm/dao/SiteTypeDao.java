package com.tmm.dao;

import com.tmm.entity.SiteType;

import java.util.List;

public interface SiteTypeDao extends BaseDao<SiteType>{
    @Override
    int insert(SiteType record);

    @Override
    int delete(String record);

    @Override
    int update(SiteType record);

    @Override
    List<SiteType> selectAll();

    @Override
    SiteType selectById(String id);
}