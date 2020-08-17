package com.omgm.admin.main.beans;

import java.util.Date;

public class RoomReservationVO {
    private int roomReservation_no;
    private int roomReservation_roomNo;
    private int roomReservation_memberNo;
    private Date roomReservation_stayDay;

    @Override
    public String toString() {
        return "RoomReservationVO{" +
                "roomReservation_no=" + roomReservation_no +
                ", roomReservation_roomNo=" + roomReservation_roomNo +
                ", roomReservation_memberNo=" + roomReservation_memberNo +
                ", roomReservation_stayDay=" + roomReservation_stayDay +
                ", roomReservation_payDay=" + roomReservation_payDay +
                ", roomReservation_foodNo=" + roomReservation_foodNo +
                ", roomReservation_toyNo=" + roomReservation_toyNo +
                ", roomReservation_pickupYn='" + roomReservation_pickupYn + '\'' +
                ", roomReservation_pickupTime=" + roomReservation_pickupTime +
                ", roomReservation_pickupAddress='" + roomReservation_pickupAddress + '\'' +
                ", roomReservation_fee=" + roomReservation_fee +
                ", roomReservation_usePointYn='" + roomReservation_usePointYn + '\'' +
                ", roomReservation_usePoint=" + roomReservation_usePoint +
                '}';
    }

    public int getRoomReservation_no() {
        return roomReservation_no;
    }

    public void setRoomReservation_no(int roomReservation_no) {
        this.roomReservation_no = roomReservation_no;
    }

    public int getRoomReservation_roomNo() {
        return roomReservation_roomNo;
    }

    public void setRoomReservation_roomNo(int roomReservation_roomNo) {
        this.roomReservation_roomNo = roomReservation_roomNo;
    }

    public int getRoomReservation_memberNo() {
        return roomReservation_memberNo;
    }

    public void setRoomReservation_memberNo(int roomReservation_memberNo) {
        this.roomReservation_memberNo = roomReservation_memberNo;
    }

    public Date getRoomReservation_stayDay() {
        return roomReservation_stayDay;
    }

    public void setRoomReservation_stayDay(Date roomReservation_stayDay) {
        this.roomReservation_stayDay = roomReservation_stayDay;
    }

    public Date getRoomReservation_payDay() {
        return roomReservation_payDay;
    }

    public void setRoomReservation_payDay(Date roomReservation_payDay) {
        this.roomReservation_payDay = roomReservation_payDay;
    }

    public int getRoomReservation_foodNo() {
        return roomReservation_foodNo;
    }

    public void setRoomReservation_foodNo(int roomReservation_foodNo) {
        this.roomReservation_foodNo = roomReservation_foodNo;
    }

    public int getRoomReservation_toyNo() {
        return roomReservation_toyNo;
    }

    public void setRoomReservation_toyNo(int roomReservation_toyNo) {
        this.roomReservation_toyNo = roomReservation_toyNo;
    }

    public String getRoomReservation_pickupYn() {
        return roomReservation_pickupYn;
    }

    public void setRoomReservation_pickupYn(String roomReservation_pickupYn) {
        this.roomReservation_pickupYn = roomReservation_pickupYn;
    }

    public int getRoomReservation_pickupTime() {
        return roomReservation_pickupTime;
    }

    public void setRoomReservation_pickupTime(int roomReservation_pickupTime) {
        this.roomReservation_pickupTime = roomReservation_pickupTime;
    }

    public String getRoomReservation_pickupAddress() {
        return roomReservation_pickupAddress;
    }

    public void setRoomReservation_pickupAddress(String roomReservation_pickupAddress) {
        this.roomReservation_pickupAddress = roomReservation_pickupAddress;
    }

    public int getRoomReservation_fee() {
        return roomReservation_fee;
    }

    public void setRoomReservation_fee(int roomReservation_fee) {
        this.roomReservation_fee = roomReservation_fee;
    }

    public String getRoomReservation_usePointYn() {
        return roomReservation_usePointYn;
    }

    public void setRoomReservation_usePointYn(String roomReservation_usePointYn) {
        this.roomReservation_usePointYn = roomReservation_usePointYn;
    }

    public int getRoomReservation_usePoint() {
        return roomReservation_usePoint;
    }

    public void setRoomReservation_usePoint(int roomReservation_usePoint) {
        this.roomReservation_usePoint = roomReservation_usePoint;
    }

    private Date roomReservation_payDay;
    private int roomReservation_foodNo;
    private int roomReservation_toyNo;
    private String roomReservation_pickupYn;
    private int roomReservation_pickupTime;
    private String roomReservation_pickupAddress;
    private int roomReservation_fee;
    private String roomReservation_usePointYn;
    private int roomReservation_usePoint;
}
