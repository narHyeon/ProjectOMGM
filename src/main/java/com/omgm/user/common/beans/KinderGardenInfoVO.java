package com.omgm.user.common.beans;

public class KinderGardenInfoVO {
    private int seq;
    private String title;
    private String regDate;
    private String formatDate;

    public KinderGardenInfoVO() { }

    public KinderGardenInfoVO(int seq, String title, String regDate, String formatDate) {
        this.seq = seq;
        this.title = title;
        this.regDate = regDate;
        this.formatDate = formatDate;
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
        return "KinderGardenInfoVO{" +
                "seq=" + seq +
                ", title='" + title + '\'' +
                ", regDate='" + regDate + '\'' +
                ", formatDate='" + formatDate + '\'' +
                '}';
    }
}
