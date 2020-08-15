package com.omgm.admin.management.review.beans.beans;

import lombok.Data;

import java.util.Date;

public @Data class ReviewVO {
    private int seq;
    private String id;
    private String pwd;
    private String title;
    private String content;
    private Date regDate;
    private int cnt;
    private String imgRef;
    private String searchCondition;
    private String searchKeyword;
    private String formatDate;


    // prev content
    private int prevSeq;
    private String prevTitle;
    private Date prevDate;
    private String formatPrevDate;
    // next content
    private int nextSeq;
    private String nextTitle;
    private Date nextDate;
    private String formatNextDate;
}
