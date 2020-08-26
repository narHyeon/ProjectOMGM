package com.omgm.user.room.beans;

public class RoomVO {

	private int ROOM_NO;
	private String ROOM_NAME;
	private String ROOM_CONTENT;
	private String ROOM_IMG;
	private int ROOM_PRICE;
	private int ROOM_SALERATE;
	private String ROOM_KIND;
	private int ROOM_RANK;
	private String ROOM_FOR;
	private String ROOM_RESERVATIONYN;
	
	public RoomVO() {
		ROOM_RESERVATIONYN = "N";
	}
	public int getROOM_NO() {
		return ROOM_NO;
	}
	public void setROOM_NO(int rOOM_NO) {
		ROOM_NO = rOOM_NO;
	}
	public String getROOM_NAME() {
		return ROOM_NAME;
	}
	public void setROOM_NAME(String rOOM_NAME) {
		ROOM_NAME = rOOM_NAME;
	}
	public String getROOM_CONTENT() {
		return ROOM_CONTENT;
	}
	public void setROOM_CONTENT(String rOOM_CONTENT) {
		ROOM_CONTENT = rOOM_CONTENT;
	}
	public String getROOM_IMG() {
		return ROOM_IMG;
	}
	public void setROOM_IMG(String rOOM_IMG) {
		ROOM_IMG = rOOM_IMG;
	}
	public int getROOM_PRICE() {
		return ROOM_PRICE;
	}
	public void setROOM_PRICE(int rOOM_PRICE) {
		ROOM_PRICE = rOOM_PRICE;
	}
	public int getROOM_SALERATE() {
		return ROOM_SALERATE;
	}
	public void setROOM_SALERATE(int rOOM_SALERATE) {
		ROOM_SALERATE = rOOM_SALERATE;
	}
	public String getROOM_KIND() {
		return ROOM_KIND;
	}
	public void setROOM_KIND(String rOOM_KIND) {
		ROOM_KIND = rOOM_KIND;
	}
	public int getROOM_RANK() {
		return ROOM_RANK;
	}
	public void setROOM_RANK(int rOOM_RANK) {
		ROOM_RANK = rOOM_RANK;
	}
	public String getROOM_FOR() {
		return ROOM_FOR;
	}
	public void setROOM_FOR(String rOOM_FOR) {
		ROOM_FOR = rOOM_FOR;
	}
	public String getROOM_RESERVATIONYN() {
		return ROOM_RESERVATIONYN;
	}
	public void setROOM_RESERVATIONYN(String rOOM_RESERVATIONYN) {
		ROOM_RESERVATIONYN = rOOM_RESERVATIONYN;
	}
	@Override
	public String toString() {
		return "RoomVO [ROOM_NO=" + ROOM_NO + ", ROOM_NAME=" + ROOM_NAME + ", ROOM_CONTENT=" + ROOM_CONTENT
				+ ", ROOM_IMG=" + ROOM_IMG + ", ROOM_PRICE=" + ROOM_PRICE + ", ROOM_SALERATE=" + ROOM_SALERATE
				+ ", ROOM_KIND=" + ROOM_KIND + ", ROOM_RANK=" + ROOM_RANK + ", ROOM_FOR=" + ROOM_FOR
				+ ", ROOM_RESERVATIONYN=" + ROOM_RESERVATIONYN + "]";
	}
	
}
