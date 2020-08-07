package com.omgm.user.mall.beans;

import java.util.Date;

public class UserMallFeedVO {
     private int feed_code;
     private String feed_name;
     private Date feed_inStock;
     private int feed_expiration;
     private int feed_price;
     private int feed_discount;
     private int feed_stock;
     private int feed_point;
     private String feed_info;
     private String feed_img;
     private String searchCondition;
     private String searchKeyword;
     private int page;

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getSearchCondition() {
        return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
        this.searchCondition = searchCondition;
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

    public Date getFeed_inStock() {
        return feed_inStock;
    }

    public void setFeed_inStock(Date feed_inStock) {
        this.feed_inStock = feed_inStock;
    }

    public int getFeed_expiration() {
        return feed_expiration;
    }

    public void setFeed_expiration(int feed_expiration) {
        this.feed_expiration = feed_expiration;
    }

    public int getFeed_price() {
        return feed_price;
    }

    public void setFeed_price(int feed_price) {
        this.feed_price = feed_price;
    }

    public int getFeed_discount() {
        return feed_discount;
    }

    public void setFeed_discount(int feed_discount) {
        this.feed_discount = feed_discount;
    }

    public int getFeed_stock() {
        return feed_stock;
    }

    public void setFeed_stock(int feed_stock) {
        this.feed_stock = feed_stock;
    }

    public int getFeed_point() {
        return feed_point;
    }

    public void setFeed_point(int feed_point) {
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
