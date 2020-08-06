package com.omgm.admin.kinderGarden.beans;

public class KinderGardenVO {
    private int seq;
    private String title;
    private String regDate;

    public KinderGardenVO() { }

    public KinderGardenVO(int seq, String title, String regDate) {
        this.seq = seq;
        this.title = title;
        this.regDate = regDate;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "KinderGardenVO{" +
                "seq=" + seq +
                ", title='" + title + '\'' +
                ", regDate='" + regDate + '\'' +
                '}';
    }
}
