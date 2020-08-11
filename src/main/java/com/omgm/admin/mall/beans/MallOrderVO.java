package com.omgm.admin.mall.beans;

import java.util.Date;

public class MallOrderVO {
    private int order_status_no;
    private String order_status_id;
    private Date order_status_date;
    private char order_status_state;
    private String order_status_zipcode;
    private String  order_status_address1;
    private String order_status_address2;
    private String order_status_receiver;
    private int order_status_phone;
    private int order_status_point_used;
    private String order_status_memo;
    private String order_status_name;
    private int order_status_price;

    public String getOrder_status_name() {
        return order_status_name;
    }

    public void setOrder_status_name(String order_status_name) {
        this.order_status_name = order_status_name;
    }

    public int getOrder_status_price() {
        return order_status_price;
    }

    public void setOrder_status_price(int order_status_price) {
        this.order_status_price = order_status_price;
    }

    public int getOrder_status_no() {
        return order_status_no;
    }

    public void setOrder_status_no(int order_status_no) {
        this.order_status_no = order_status_no;
    }

    public String getOrder_status_id() {
        return order_status_id;
    }

    public void setOrder_status_id(String order_status_id) {
        this.order_status_id = order_status_id;
    }

    public Date getOrder_status_date() {
        return order_status_date;
    }

    public void setOrder_status_date(Date order_status_date) {
        this.order_status_date = order_status_date;
    }

    public char getOrder_status_state() {
        return order_status_state;
    }

    public void setOrder_status_state(char order_status_state) {
        this.order_status_state = order_status_state;
    }

    public String getOrder_status_zipcode() {
        return order_status_zipcode;
    }

    public void setOrder_status_zipcode(String order_status_zipcode) {
        this.order_status_zipcode = order_status_zipcode;
    }

    public String getOrder_status_address1() {
        return order_status_address1;
    }

    public void setOrder_status_address1(String order_status_address1) {
        this.order_status_address1 = order_status_address1;
    }

    public String getOrder_status_address2() {
        return order_status_address2;
    }

    public void setOrder_status_address2(String order_status_address2) {
        this.order_status_address2 = order_status_address2;
    }

    public String getOrder_status_receiver() {
        return order_status_receiver;
    }

    public void setOrder_status_receiver(String order_status_receiver) {
        this.order_status_receiver = order_status_receiver;
    }

    public int getOrder_status_phone() {
        return order_status_phone;
    }

    public void setOrder_status_phone(int order_status_phone) {
        this.order_status_phone = order_status_phone;
    }

    public int getOrder_status_point_used() {
        return order_status_point_used;
    }

    public void setOrder_status_point_used(int order_status_point_used) {
        this.order_status_point_used = order_status_point_used;
    }

    public String getOrder_status_memo() {
        return order_status_memo;
    }

    public void setOrder_status_memo(String order_status_memo) {
        this.order_status_memo = order_status_memo;
    }


    public void setOrder_status_no() {
    }
}
