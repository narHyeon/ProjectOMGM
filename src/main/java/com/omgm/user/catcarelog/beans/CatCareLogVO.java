package com.omgm.user.catcarelog.beans;

import java.util.Date;

public class CatCareLogVO {

	private int CATCARELOG_NO;
	private int CATCARELOG_USERNUM;		//USER 테이블 외부키
	private int CATCARELOG_SERVICENUM;  //SERVICE 테이블 외부키
	private int CATCARELOG_WRITER;		//USER 테이블 외부키
	private String CATCARELOG_TITLE;
	private String CATCARELOG_CONTNET;
	private String CATCARELOG_FILES;
	private String CATCARELOG_CARESTART;
	private String CATCARELOG_CAREEND;
	private Date CATCARELOG_REGDATE;
	private int CATCARELOG_LASTUPDATER;
	private Date CATCARELOG_LASTUPDATEDATE;
	
	public int getCATCARELOG_NO() {
		return CATCARELOG_NO;
	}
	public void setCATCARELOG_NO(int cATCARELOG_NO) {
		CATCARELOG_NO = cATCARELOG_NO;
	}
	public int getCATCARELOG_USERNUM() {
		return CATCARELOG_USERNUM;
	}
	public void setCATCARELOG_USERNUM(int cATCARELOG_USERNUM) {
		CATCARELOG_USERNUM = cATCARELOG_USERNUM;
	}
	public int getCATCARELOG_SERVICENUM() {
		return CATCARELOG_SERVICENUM;
	}
	public void setCATCARELOG_SERVICENUM(int cATCARELOG_SERVICENUM) {
		CATCARELOG_SERVICENUM = cATCARELOG_SERVICENUM;
	}
	public int getCATCARELOG_WRITER() {
		return CATCARELOG_WRITER;
	}
	public void setCATCARELOG_WRITER(int cATCARELOG_WRITER) {
		CATCARELOG_WRITER = cATCARELOG_WRITER;
	}
	public String getCATCARELOG_TITLE() {
		return CATCARELOG_TITLE;
	}
	public void setCATCARELOG_TITLE(String cATCARELOG_TITLE) {
		CATCARELOG_TITLE = cATCARELOG_TITLE;
	}
	public String getCATCARELOG_CONTNET() {
		return CATCARELOG_CONTNET;
	}
	public void setCATCARELOG_CONTNET(String cATCARELOG_CONTNET) {
		CATCARELOG_CONTNET = cATCARELOG_CONTNET;
	}
	public String getCATCARELOG_FILES() {
		return CATCARELOG_FILES;
	}
	public void setCATCARELOG_FILES(String cATCARELOG_FILES) {
		CATCARELOG_FILES = cATCARELOG_FILES;
	}
	public String getCATCARELOG_CARESTART() {
		return CATCARELOG_CARESTART;
	}
	public void setCATCARELOG_CARESTART(String cATCARELOG_CARESTART) {
		CATCARELOG_CARESTART = cATCARELOG_CARESTART;
	}
	public String getCATCARELOG_CAREEND() {
		return CATCARELOG_CAREEND;
	}
	public void setCATCARELOG_CAREEND(String cATCARELOG_CAREEND) {
		CATCARELOG_CAREEND = cATCARELOG_CAREEND;
	}
	public Date getCATCARELOG_REGDATE() {
		return CATCARELOG_REGDATE;
	}
	public void setCATCARELOG_REGDATE(Date cATCARELOG_REGDATE) {
		CATCARELOG_REGDATE = cATCARELOG_REGDATE;
	}
	public int getCATCARELOG_LASTUPDATER() {
		return CATCARELOG_LASTUPDATER;
	}
	public void setCATCARELOG_LASTUPDATER(int cATCARELOG_LASTUPDATER) {
		CATCARELOG_LASTUPDATER = cATCARELOG_LASTUPDATER;
	}
	public Date getCATCARELOG_LASTUPDATEDATE() {
		return CATCARELOG_LASTUPDATEDATE;
	}
	public void setCATCARELOG_LASTUPDATEDATE(Date cATCARELOG_LASTUPDATEDATE) {
		CATCARELOG_LASTUPDATEDATE = cATCARELOG_LASTUPDATEDATE;
	}
	@Override
	public String toString() {
		return "CatCareLogVO [CATCARELOG_NO=" + CATCARELOG_NO + ", CATCARELOG_USERNUM=" + CATCARELOG_USERNUM
				+ ", CATCARELOG_SERVICENUM=" + CATCARELOG_SERVICENUM + ", CATCARELOG_WRITER=" + CATCARELOG_WRITER
				+ ", CATCARELOG_TITLE=" + CATCARELOG_TITLE + ", CATCARELOG_CONTNET=" + CATCARELOG_CONTNET
				+ ", CATCARELOG_FILES=" + CATCARELOG_FILES + ", CATCARELOG_CARESTART=" + CATCARELOG_CARESTART
				+ ", CATCARELOG_CAREEND=" + CATCARELOG_CAREEND + ", CATCARELOG_REGDATE=" + CATCARELOG_REGDATE
				+ ", CATCARELOG_LASTUPDATER=" + CATCARELOG_LASTUPDATER + ", CATCARELOG_LASTUPDATEDATE="
				+ CATCARELOG_LASTUPDATEDATE + "]";
	}
	
	

}