package com.omgm.admin.mall.beans;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class MallToyVO {
    private int toy_code;
    private String toy_name;
    private Date toy_instock;
    private String toy_price;
    private String toy_discount;
    private String toy_stock;
    private String toy_point;
    private String toy_info;
    private String toy_img;
    private MultipartFile uploadFile;
    private MultipartFile update_uploadFile;
    public MultipartFile getUpdate_uploadFile() {
        return update_uploadFile;
    }

    public void setUpdate_uploadFile(MultipartFile update_uploadFile) {
        this.update_uploadFile = update_uploadFile;
    }



    public MultipartFile getUploadFile() {
        return uploadFile;
    }
    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }
    public MallToyVO() {
    }

    @Override
    public String toString() {
        return "MallToyVO{" +
                "toy_code=" + toy_code +
                ", toy_name='" + toy_name + '\'' +
                ", toy_instock=" + toy_instock +
                ", toy_price=" + toy_price +
                ", toy_discount=" + toy_discount +
                ", toy_stock=" + toy_stock +
                ", toy_point=" + toy_point +
                ", toy_info='" + toy_info + '\'' +
                ", toy_img='" + toy_img + '\'' +
                '}';
    }

    public int getToy_code() {
        return toy_code;
    }

    public void setToy_code(int toy_code) {
        this.toy_code = toy_code;
    }

    public String getToy_name() {
        return toy_name;
    }

    public void setToy_name(String toy_name) {
        this.toy_name = toy_name;
    }

    public Date getToy_instock() {
        return toy_instock;
    }

    public void setToy_instock(Date toy_instock) {
        this.toy_instock = toy_instock;
    }


    public String getToy_price() {
        return toy_price;
    }

    public void setToy_price(String toy_price) {
        this.toy_price = toy_price;
    }

    public String getToy_discount() {
        return toy_discount;
    }

    public void setToy_discount(String toy_discount) {
        this.toy_discount = toy_discount;
    }

    public String getToy_stock() {
        return toy_stock;
    }

    public void setToy_stock(String toy_stock) {
        this.toy_stock = toy_stock;
    }

    public String getToy_point() {
        return toy_point;
    }

    public void setToy_point(String toy_point) {
        this.toy_point = toy_point;
    }

    public String getToy_info() {
        return toy_info;
    }

    public void setToy_info(String toy_info) {
        this.toy_info = toy_info;
    }

    public String getToy_img() {
        return toy_img;
    }

    public void setToy_img(String toy_img) {
        this.toy_img = toy_img;
    }
}
