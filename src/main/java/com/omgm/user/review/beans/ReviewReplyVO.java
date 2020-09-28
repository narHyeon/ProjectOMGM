package com.omgm.user.review.beans;

import java.util.Date;

public class ReviewReplyVO {
    private int seq;
    private int boardSeq;
    private String id;
    private String pwd;
    private String content;
    private Date regDate;
    private String formatDate;

    public ReviewReplyVO() { }

    public ReviewReplyVO(int seq, int boardSeq, String id, String pwd, String content, Date regDate) {
        this.seq = seq;
        this.boardSeq = boardSeq;
        this.id = id;
        this.pwd = pwd;
        this.content = content;
        this.regDate = regDate;
    }

    public String getFormatDate() {
        return formatDate;
    }

    public void setFormatDate(String formatDate) {
        this.formatDate = formatDate;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getBoardSeq() {
        return boardSeq;
    }

    public void setBoardSeq(int boardSeq) {
        this.boardSeq = boardSeq;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "ReviewReplyVO{" +
                "seq=" + seq +
                ", boardSeq=" + boardSeq +
                ", id='" + id + '\'' +
                ", pwd='" + pwd + '\'' +
                ", content='" + content + '\'' +
                ", regDate=" + regDate +
                '}';
    }
}
