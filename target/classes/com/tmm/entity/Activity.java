package com.tmm.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Activity {

    private String id;

    private String customerId;

    private String siteId;

    private String activityName;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm:ss")
    private LocalDateTime activityTime;

    private String remark;

}