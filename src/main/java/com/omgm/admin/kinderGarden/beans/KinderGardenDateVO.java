package com.omgm.admin.kinderGarden.beans;

import java.util.Date;

public class KinderGardenDateVO {
    private Date date1;
    private Date date2;

    public KinderGardenDateVO() { }

    public KinderGardenDateVO(Date date1, Date date2) {
        this.date1 = date1;
        this.date2 = date2;
    }

    public Date getDate1() {
        return date1;
    }

    public void setDate1(Date date1) {
        this.date1 = date1;
    }

    public Date getDate2() {
        return date2;
    }

    public void setDate2(Date date2) {
        this.date2 = date2;
    }

    @Override
    public String toString() {
        return "KinderGardenDateVO{" +
                "date1=" + date1 +
                ", date2=" + date2 +
                '}';
    }
}
