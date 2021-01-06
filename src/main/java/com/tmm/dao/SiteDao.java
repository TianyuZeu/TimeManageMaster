package com.tmm.dao;

import com.tmm.entity.Site;

import java.util.List;

public interface SiteDao extends BaseDao<Site>{
    @Override
    int insert(Site record);

    @Override
    int delete(String record);

    @Override
    int update(Site record);

    @Override
    List<Site> selectAll();

    @Override
    Site selectById(String id);
}