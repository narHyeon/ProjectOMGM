package com.omgm.user.common.beans;

public class KinderGardenInfoVO {
    private String time;
    private String program;

    public KinderGardenInfoVO() { }

    public KinderGardenInfoVO(String time, String program) {
        this.time = time;
        this.program = program;
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
        return "KindGardenInfoVO{" +
                "time='" + time + '\'' +
                ", program='" + program + '\'' +
                '}';
    }
}
