package com.tmm.dao;

import com.tmm.entity.SiteType;

import java.util.List;

public interface SiteTypeDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table site_type
     *
     * @mbggenerated
     */
    int insert(SiteType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table site_type
     *
     * @mbggenerated
     */
    List<SiteType> selectAll();
}