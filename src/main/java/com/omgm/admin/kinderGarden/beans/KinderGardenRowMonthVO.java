package com.omgm.admin.kinderGarden.beans;

public class KinderGardenRowMonthVO {
    private int seq;
    private int no;
    private String mondayAM;
    private String tuesdayAM;
    private String wednesdayAM;
    private String thursdayAM;
    private String fridayAM;
    private String monthdayPM;
    private String tuesdayPM;
    private String wednesdayPM;
    private String thursdayPM;
    private String fridayPM;

    public KinderGardenRowMonthVO() { }

    public KinderGardenRowMonthVO(int seq, int no, String mondayAM, String tuesdayAM, String wednesdayAM, String thursdayAM, String fridayAM, String monthdayPM, String tuesdayPM, String wednesdayPM, String thursdayPM, String fridayPM) {
        this.seq = seq;
        this.no = no;
        this.mondayAM = mondayAM;
        this.tuesdayAM = tuesdayAM;
        this.wednesdayAM = wednesdayAM;
        this.thursdayAM = thursdayAM;
        this.fridayAM = fridayAM;
        this.monthdayPM = monthdayPM;
        this.tuesdayPM = tuesdayPM;
        this.wednesdayPM = wednesdayPM;
        this.thursdayPM = thursdayPM;
        this.fridayPM = fridayPM;
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

    public String getMonthdayAM() {
        return mondayAM;
    }

    public void setMonthdayAM(String mondayAM) {
        this.mondayAM = mondayAM;
    }

    public String getTuesdayAM() {
        return tuesdayAM;
    }

    public void setTuesdayAM(String tuesdayAM) {
        this.tuesdayAM = tuesdayAM;
    }

    public String getWednesdayAM() {
        return wednesdayAM;
    }

    public void setWednesdayAM(String wednesdayAM) {
        this.wednesdayAM = wednesdayAM;
    }

    public String getThursdayAM() {
        return thursdayAM;
    }

    public void setThursdayAM(String thursdayAM) {
        this.thursdayAM = thursdayAM;
    }

    public String getFridayAM() {
        return fridayAM;
    }

    public void setFridayAM(String fridayAM) {
        this.fridayAM = fridayAM;
    }

    public String getMonthdayPM() {
        return monthdayPM;
    }

    public void setMonthdayPM(String monthdayPM) {
        this.monthdayPM = monthdayPM;
    }

    public String getTuesdayPM() {
        return tuesdayPM;
    }

    public void setTuesdayPM(String tuesdayPM) {
        this.tuesdayPM = tuesdayPM;
    }

    public String getWednesdayPM() {
        return wednesdayPM;
    }

    public void setWednesdayPM(String wednesdayPM) {
        this.wednesdayPM = wednesdayPM;
    }

    public String getThursdayPM() {
        return thursdayPM;
    }

    public void setThursdayPM(String thursdayPM) {
        this.thursdayPM = thursdayPM;
    }

    public String getFridayPM() {
        return fridayPM;
    }

    public void setFridayPM(String fridayPM) {
        this.fridayPM = fridayPM;
    }

    @Override
    public String toString() {
        return "kinderGardenMonthRowVO{" +
                "seq=" + seq +
                ", no=" + no +
                ", mondayAM='" + mondayAM + '\'' +
                ", tuesdayAM='" + tuesdayAM + '\'' +
                ", wednesdayAM='" + wednesdayAM + '\'' +
                ", thursdayAM='" + thursdayAM + '\'' +
                ", fridayAM='" + fridayAM + '\'' +
                ", monthdayPM='" + monthdayPM + '\'' +
                ", tuesdayPM='" + tuesdayPM + '\'' +
                ", wednesdayPM='" + wednesdayPM + '\'' +
                ", thursdayPM='" + thursdayPM + '\'' +
                ", fridayPM='" + fridayPM + '\'' +
                '}';
    }
}
