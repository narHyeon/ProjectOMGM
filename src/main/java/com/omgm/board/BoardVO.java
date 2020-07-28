package com.omgm.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String writer;
    private String title;
    private String content;
    private Date regDate;
    private int cnt;

    public BoardVO() { }

    public BoardVO(int seq, String writer, String title, String content, Date regDate, int cnt) {
        this.seq = seq;
        this.writer = writer;
        this.title = title;
        this.content = content;
        this.regDate = regDate;
        this.cnt = cnt;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }
}
