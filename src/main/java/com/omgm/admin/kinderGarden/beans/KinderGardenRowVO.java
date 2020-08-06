package com.omgm.admin.kinderGarden.beans;

public class KinderGardenRowVO {
    private int seq;
    private int no;
    private String time;
    private String program;

    public KinderGardenRowVO() { }

    public KinderGardenRowVO(int seq, int no, String time, String program) {
        this.seq = seq;
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
        return "KinderGardenRowVO{" +
                "seq=" + seq +
                ", no=" + no +
                ", time='" + time + '\'' +
                ", program='" + program + '\'' +
                '}';
    }
}
