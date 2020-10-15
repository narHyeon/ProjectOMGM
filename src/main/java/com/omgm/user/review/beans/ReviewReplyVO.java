package com.omgm.user.review.beans;

import lombok.Data;

import java.util.Date;

public @Data class ReviewReplyVO {
    private int seq;
    private int boardSeq;
    private String id;
    private String content;
    private Date regDate;
    private String formatDate;
    private String writer;
}
