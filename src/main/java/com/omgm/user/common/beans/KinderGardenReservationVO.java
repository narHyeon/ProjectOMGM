package com.omgm.user.common.beans;

public class KinderGardenReservationVO {
    private int seq;
    private String name;
    private String service;
    private int price;
    private String buyerName;
    private String animal;
    private int animal_age;
    private String phone;
    private String email;
    private String zipcode;
    private String address;
    private String etc;
    private String merchantUid;
    private String pgProvider;

    public KinderGardenReservationVO() { }

    public KinderGardenReservationVO(int seq, String name, String service, int price, String buyerName, String animal, int animal_age, String phone, String email, String zipcode, String address, String etc, String merchantUid, String pgProvider) {
        this.seq = seq;
        this.name = name;
        this.service = service;
        this.price = price;
        this.buyerName = buyerName;
        this.animal = animal;
        this.animal_age = animal_age;
        this.phone = phone;
        this.email = email;
        this.zipcode = zipcode;
        this.address = address;
        this.etc = etc;
        this.merchantUid = merchantUid;
        this.pgProvider = pgProvider;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
    }

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animal) {
        this.animal = animal;
    }

    public int getAnimal_age() {
        return animal_age;
    }

    public void setAnimal_age(int animal_age) {
        this.animal_age = animal_age;
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

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc;
    }

    public String getMerchantUid() {
        return merchantUid;
    }

    public void setMerchantUid(String merchantUid) {
        this.merchantUid = merchantUid;
    }

    public String getPgProvider() {
        return pgProvider;
    }

    public void setPgProvider(String pgProvider) {
        this.pgProvider = pgProvider;
    }

    @Override
    public String toString() {
        return "KinderGardenReservationVO{" +
                "seq=" + seq +
                ", name='" + name + '\'' +
                ", service='" + service + '\'' +
                ", price=" + price +
                ", buyerName='" + buyerName + '\'' +
                ", animal='" + animal + '\'' +
                ", animal_age=" + animal_age +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", address='" + address + '\'' +
                ", etc='" + etc + '\'' +
                ", merchantUid='" + merchantUid + '\'' +
                ", pgProvider='" + pgProvider + '\'' +
                '}';
    }
}
