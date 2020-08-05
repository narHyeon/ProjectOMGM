package com.omgm.admin.mall.beans;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class MallFeedVO {
    private int feed_code;
    private String feed_name;
    private Date feed_instock;
    private int feed_expiration;
    private String feed_price;
    private String feed_discount;
    private String feed_stock;
    private String feed_point;
    private String feed_info;
    private String feed_img;
    private MultipartFile feed_uploadFile;
    private MultipartFile feed_update_uploadFile;

    public MultipartFile getFeed_update_uploadFile() {
        return feed_update_uploadFile;
    }

    public void setFeed_update_uploadFile(MultipartFile feed_update_uploadFile) {
        this.feed_update_uploadFile = feed_update_uploadFile;
    }

    public MultipartFile getFeed_uploadFile() {
        return feed_uploadFile;
    }

    public void setFeed_uploadFile(MultipartFile feed_uploadFile) {
        this.feed_uploadFile = feed_uploadFile;
    }



    public MallFeedVO() {
    }

    @Override
    public String toString() {
        return "MallFeedVO{" +
                "feed_code=" + feed_code +
                ", feed_name='" + feed_name + '\'' +
                ", feed_instock=" + feed_instock +
                ", feed_expiration=" + feed_expiration +
                ", feed_price='" + feed_price + '\'' +
                ", feed_discount='" + feed_discount + '\'' +
                ", feed_stock='" + feed_stock + '\'' +
                ", feed_point='" + feed_point + '\'' +
                ", feed_info='" + feed_info + '\'' +
                ", feed_img='" + feed_img + '\'' +
                '}';
    }

    public int getFeed_code() {
        return feed_code;
    }

    public void setFeed_code(int feed_code) {
        this.feed_code = feed_code;
    }

    public String getFeed_name() {
        return feed_name;
    }

    public void setFeed_name(String feed_name) {
        this.feed_name = feed_name;
    }

    public Date getFeed_instock() {
        return feed_instock;
    }

    public void setFeed_instock(Date feed_instock) {
        this.feed_instock = feed_instock;
    }

    public int getFeed_expiration() {
        return feed_expiration;
    }

    public void setFeed_expiration(int feed_expiration) {
        this.feed_expiration = feed_expiration;
    }

    public String getFeed_price() {
        return feed_price;
    }

    public void setFeed_price(String feed_price) {
        this.feed_price = feed_price;
    }

    public String getFeed_discount() {
        return feed_discount;
    }

    public void setFeed_discount(String feed_discount) {
        this.feed_discount = feed_discount;
    }

    public String getFeed_stock() {
        return feed_stock;
    }

    public void setFeed_stock(String feed_stock) {
        this.feed_stock = feed_stock;
    }

    public String getFeed_point() {
        return feed_point;
    }

    public void setFeed_point(String feed_point) {
        this.feed_point = feed_point;
    }

    public String getFeed_info() {
        return feed_info;
    }

    public void setFeed_info(String feed_info) {
        this.feed_info = feed_info;
    }

    public String getFeed_img() {
        return feed_img;
    }

    public void setFeed_img(String feed_img) {
        this.feed_img = feed_img;
    }

}
