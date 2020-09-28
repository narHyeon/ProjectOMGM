package com.omgm.admin.sms.beans;

public class SmsVO {
    private String sendNumber;
    private String receiveNumber;
    private String message;

    public SmsVO() { }

    public SmsVO(String sendNumber, String receiveNumber, String message) {
        this.sendNumber = sendNumber;
        this.receiveNumber = receiveNumber;
        this.message = message;
    }

    public String getSendNumber() {
        return sendNumber;
    }

    public void setSendNumber(String sendNumber) {
        this.sendNumber = sendNumber;
    }

    public String getReceiveNumber() {
        return receiveNumber;
    }

    public void setReceiveNumber(String receiveNumber) {
        this.receiveNumber = receiveNumber;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "SmsVO{" +
                "sendNumber='" + sendNumber + '\'' +
                ", receiveNumber='" + receiveNumber + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
