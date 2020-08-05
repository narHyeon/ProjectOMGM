package com.omgm.admin.mall.beans;

import java.util.Date;

public class OrderVO {
    private int order_no;
    private String order_id;
    private Date order_date;
    private int order_phone;
    private int order_price;
    private String order_state;

    public String getOrder_state() {
        return order_state;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }

    public int getOrder_no() {
        return order_no;
    }

    public void setOrder_no(int order_no) {
        this.order_no = order_no;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public int getOrder_phone() {
        return order_phone;
    }

    public void setOrder_phone(int order_phone) {
        this.order_phone = order_phone;
    }

    public int getOrder_price() {
        return order_price;
    }

    public void setOrder_price(int order_price) {
        this.order_price = order_price;
    }
}