package com.omgm.admin.kinderGarden.beans;

public class KinderGardenVO {
    private int seq;
    private String title;
    private String regDate;

    private int no;
    private String time;
    private String program;

    public KinderGardenVO() { }

    public KinderGardenVO(int seq, String title, String regDate, int no, String time, String program) {
        this.seq = seq;
        this.title = title;
        this.regDate = regDate;
        this.no = no;
        this.time = time;
        this.program = program;
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

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    @Override
    public String toString() {
        return "KinderGardenVO{" +
                "seq=" + seq +
                ", title='" + title + '\'' +
                ", regDate='" + regDate + '\'' +
                ", no=" + no +
                ", time='" + time + '\'' +
                ", program='" + program + '\'' +
                '}';
    }
}
