package com.tmm.service;

import com.tmm.dao.SiteTypeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SiteTypeService {
    @Autowired
    SiteTypeDao siteTypeDao;
}
