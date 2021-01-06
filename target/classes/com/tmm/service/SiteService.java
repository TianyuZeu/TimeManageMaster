package com.tmm.service;

import com.tmm.dao.SiteDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SiteService {
    @Autowired
    SiteDao siteDao;
}
