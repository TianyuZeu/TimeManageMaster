package com.tmm.dao;

import com.tmm.entity.Site;

import java.util.List;

public interface SiteDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table site
     *
     * @mbggenerated
     */
    int insert(Site record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table site
     *
     * @mbggenerated
     */
    List<Site> selectAll();
}