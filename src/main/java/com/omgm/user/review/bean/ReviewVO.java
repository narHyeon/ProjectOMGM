package com.omgm.user.review.bean;

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

    public ReviewVO() {
    }

    public ReviewVO(int seq, String id, String pwd, String title, String content, Date regDate, int cnt, String imgRef) {
        this.seq = seq;
        this.id = id;
        this.pwd = pwd;
        this.title = title;
        this.content = content;
        this.regDate = regDate;
        this.cnt = cnt;
        this.imgRef = imgRef;
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
                '}';
    }
}
