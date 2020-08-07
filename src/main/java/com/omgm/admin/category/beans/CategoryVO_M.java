package com.omgm.admin.category.beans;

public class CategoryVO_M {

	private int CATEGORY_NO;
	private String CATEGORY_NAME;
	private int CATEGORY_USE;
	
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
	public int getCATEGORY_USE() {
		return CATEGORY_USE;
	}
	public void setCATEGORY_USE(int cATEGORY_USE) {
		CATEGORY_USE = cATEGORY_USE;
	}
	@Override
	public String toString() {
		return "CatrgoryVO_M [CATEGORY_NO=" + CATEGORY_NO + ", CATEGORY_NAME=" + CATEGORY_NAME + ", CATEGORY_USE="
				+ CATEGORY_USE + "]";
	}
	
	
}
