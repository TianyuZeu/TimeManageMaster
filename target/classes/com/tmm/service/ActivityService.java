package com.tmm.service;

import com.tmm.dao.ActivityDao;
import com.tmm.entity.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActivityService {

    @Autowired
    ActivityDao activityDao;

    public int insert(Activity activity){
        return activityDao.insert(activity);
    }

}
