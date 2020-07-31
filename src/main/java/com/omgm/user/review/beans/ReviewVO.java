package com.omgm.user.review.beans;

import java.util.Date;

public class ReviewVO {
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

    // prev content
    private int prevSeq;
    private String prevTitle;
    private Date prevDate;
    // next content
    private int nextSeq;
    private String nextTitle;
    private Date nextDate;

    public String getSearchCondition() {
        return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
        this.searchCondition = searchCondition;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public ReviewVO() {
    }

    public ReviewVO(int seq, String id, String pwd, String title, String content, Date regDate, int cnt, String imgRef, String searchCondition, String searchKeyword, int prevSeq, String prevTitle, Date prevDate, int nextSeq, String nextTitle, Date nextDate) {
        this.seq = seq;
        this.id = id;
        this.pwd = pwd;
        this.title = title;
        this.content = content;
        this.regDate = regDate;
        this.cnt = cnt;
        this.imgRef = imgRef;
        this.searchCondition = searchCondition;
        this.searchKeyword = searchKeyword;
        this.prevSeq = prevSeq;
        this.prevTitle = prevTitle;
        this.prevDate = prevDate;
        this.nextSeq = nextSeq;
        this.nextTitle = nextTitle;
        this.nextDate = nextDate;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
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

    public String getImgRef() {
        return imgRef;
    }

    public void setImgRef(String imgRef) {
        this.imgRef = imgRef;
    }

    public int getPrevSeq() {
        return prevSeq;
    }

    public void setPrevSeq(int prevSeq) {
        this.prevSeq = prevSeq;
    }

    public String getPrevTitle() {
        return prevTitle;
    }

    public void setPrevTitle(String prevTitle) {
        this.prevTitle = prevTitle;
    }

    public Date getPrevDate() {
        return prevDate;
    }

    public void setPrevDate(Date prevDate) {
        this.prevDate = prevDate;
    }

    public int getNextSeq() {
        return nextSeq;
    }

    public void setNextSeq(int nextSeq) {
        this.nextSeq = nextSeq;
    }

    public String getNextTitle() {
        return nextTitle;
    }

    public void setNextTitle(String nextTitle) {
        this.nextTitle = nextTitle;
    }

    public Date getNextDate() {
        return nextDate;
    }

    public void setNextDate(Date nextDate) {
        this.nextDate = nextDate;
    }

    @Override
    public String toString() {
        return "ReviewVO{" +
                "seq=" + seq +
                ", id='" + id + '\'' +
                ", pwd='" + pwd + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", regDate=" + regDate +
                ", cnt=" + cnt +
                ", imgRef='" + imgRef + '\'' +
                ", searchCondition='" + searchCondition + '\'' +
                ", searchKeyword='" + searchKeyword + '\'' +
                ", prevSeq=" + prevSeq +
                ", prevTitle='" + prevTitle + '\'' +
                ", prevDate=" + prevDate +
                ", nextSeq=" + nextSeq +
                ", nextTitle='" + nextTitle + '\'' +
                ", nextDate=" + nextDate +
                '}';
    }
}
