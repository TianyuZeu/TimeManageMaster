package com.tmm.controller;

import com.tmm.entity.Activity;
import com.tmm.service.ActivityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("activity")
@Slf4j
public class ActivityController {
    @Autowired
    ActivityService activityService;
    @PostMapping("insert")
    public int insert(@RequestBody Activity activity){
        return activityService.insert(activity);
    }
}
