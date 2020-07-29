package com.omgm.user.faq.beans;


public class CategoryVO {

	private int CATEGORY_NO;
	private String CATEGORY_NAME;
	
	public int getCATEGORY_NO() {
		return CATEGORY_NO;
	}
	public void setCATEGORY_NO(int cATEGORY_NO) {
		CATEGORY_NO = cATEGORY_NO;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	@Override
	public String toString() {
		return "CategoryVO [CATEGORY_NO=" + CATEGORY_NO + ", CATEGORY_NAME=" + CATEGORY_NAME + "]";
	}
	
	
	
	
}
