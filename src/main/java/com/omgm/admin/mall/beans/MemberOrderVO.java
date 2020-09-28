package com.omgm.admin.mall.beans;

import java.util.Date;

public class MemberOrderVO {
    private int seq;
    private String id;
    private String pwd;
    private String name;
    private String phone;
    private String email;
    private String zipcode;
    private String address;
    private int point;
    private String rank;
    private String type;
    private Date regDate;
    private String code;

    public MemberOrderVO() { }

    public MemberOrderVO(int seq, String id, String pwd, String name, String phone, String email, String zipcode, String address, int point, String rank, String type, Date regDate, String code) {
        this.seq = seq;
        this.id = id;
        this.pwd = pwd;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.zipcode = zipcode;
        this.address = address;
        this.point = point;
        this.rank = rank;
        this.type = type;
        this.regDate = regDate;
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "seq=" + seq +
                ", id='" + id + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", address='" + address + '\'' +
                ", point=" + point +
                ", rank='" + rank + '\'' +
                ", type='" + type + '\'' +
                ", regDate=" + regDate +
                ", code='" + code + '\'' +
                '}';
    }
}
