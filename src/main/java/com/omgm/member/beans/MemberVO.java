package com.omgm.member.beans;

import java.util.Date;

public class MemberVO {
    private int seq;
    private String id;
    private String pwd;
    private String name;
    private int phone;
    private String email;
    private int zipcode;
    private String address;
    private int point;
    private String rank;
    private String type;
    private Date regDate;

    public MemberVO() { }

    public MemberVO(int seq, String id, String pwd, String name, int phone, String email, int zipcode, String address, int point, String rank, String type, Date regDate) {
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

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
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
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", zipcode=" + zipcode +
                ", address='" + address + '\'' +
                ", point=" + point +
                ", rank='" + rank + '\'' +
                ", type='" + type + '\'' +
                ", regDate=" + regDate +
                '}';
    }
}
