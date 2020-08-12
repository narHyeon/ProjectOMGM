package com.omgm.user.qna.beans;

public class QnaVO {
	
	private int QNA_NO;
	private String QNA_NAME;
	private String QNA_TYPE;
	private int QNA_PHONE;
	private String QNA_CONTEXT;
	private String QNA_TITLE;
	

	public int getQNA_NO() {
		return QNA_NO;
	}
	public void setQNA_NO(int qNA_NO) {
		QNA_NO = qNA_NO;
	}
	public String getQNA_NAME() {
		return QNA_NAME;
	}
	public void setQNA_NAME(String qNA_NAME) {
		QNA_NAME = qNA_NAME;
	}
	public String getQNA_TYPE() {
		return QNA_TYPE;
	}
	public void setQNA_TYPE(String qNA_TYPE) {
		QNA_TYPE = qNA_TYPE;
	}
	public int getQNA_PHONE() {
		return QNA_PHONE;
	}
	public void setQNA_PHONE(int qNA_PHONE) {
		QNA_PHONE = qNA_PHONE;
	}
	public String getQNA_CONTEXT() {
		return QNA_CONTEXT;
	}
	public void setQNA_CONTEXT(String qNA_CONTEXT) {
		QNA_CONTEXT = qNA_CONTEXT;
	}
	public String getQNA_TITLE() {
		return QNA_TITLE;
	}
	public void setQNA_TITLE(String qNA_TITLE) {
		QNA_TITLE = qNA_TITLE;
	}
	@Override
	public String toString() {
		return "QnaVO [QNA_NO=" + QNA_NO + ", QNA_NAME=" + QNA_NAME + ", QNA_TYPE=" + QNA_TYPE + ", QNA_PHONE="
				+ QNA_PHONE + ", QNA_CONTEXT=" + QNA_CONTEXT + ", QNA_TITLE=" + QNA_TITLE + "]";
	}
	
	
}
