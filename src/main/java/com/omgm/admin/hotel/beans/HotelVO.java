package com.omgm.admin.hotel.beans;

import org.springframework.web.multipart.MultipartFile;

public class HotelVO {
    private String hotelImg;
    private int hotelNo;
    private String hotelName;
    private int hotelSize;
    private int hotelAnimalNum;
    private int hotelPrice;
    private MultipartFile hotel_uploadFile;
    private MultipartFile hotel_update_uploadFile;

    public MultipartFile getHotel_uploadFile() {
        return hotel_uploadFile;
    }

    public void setHotel_uploadFile(MultipartFile hotel_uploadFile) {
        this.hotel_uploadFile = hotel_uploadFile;
    }

    public MultipartFile getHotel_update_uploadFile() {
        return hotel_update_uploadFile;
    }

    public void setHotel_update_uploadFile(MultipartFile hotel_update_uploadFile) {
        this.hotel_update_uploadFile = hotel_update_uploadFile;
    }

    public String getHotelImg() {
        return hotelImg;
    }

    public void setHotelImg(String hotelImg) {
        this.hotelImg = hotelImg;
    }

    public int getHotelNo() {
        return hotelNo;
    }

    public void setHotelNo(int hotelNo) {
        this.hotelNo = hotelNo;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public int getHotelSize() {
        return hotelSize;
    }

    public void setHotelSize(int hotelSize) {
        this.hotelSize = hotelSize;
    }

    public int getHotelAnimalNum() {
        return hotelAnimalNum;
    }

    public void setHotelAnimalNum(int hotelAnimalNum) {
        this.hotelAnimalNum = hotelAnimalNum;
    }

    public int getHotelPrice() {
        return hotelPrice;
    }

    public void setHotelPrice(int hotelPrice) {
        this.hotelPrice = hotelPrice;
    }
}
