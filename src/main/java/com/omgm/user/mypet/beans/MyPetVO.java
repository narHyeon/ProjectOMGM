package com.omgm.user.mypet.beans;

public class MyPetVO {

	private int PET_NO;
	private int PET_OWNER;
	private String PET_KIND;
	private String PET_VARIETY;
	private String PET_NAME;
	private int PET_AGE;
	private String PET_GENDER;
	private String PET_COMMENT;
	
	
	public int getPET_NO() {
		return PET_NO;
	}


	public void setPET_NO(int pET_NO) {
		PET_NO = pET_NO;
	}


	public int getPET_OWNER() {
		return PET_OWNER;
	}


	public void setPET_OWNER(int pET_OWNER) {
		PET_OWNER = pET_OWNER;
	}


	public String getPET_KIND() {
		return PET_KIND;
	}


	public void setPET_KIND(String pET_KIND) {
		PET_KIND = pET_KIND;
	}


	public String getPET_VARIETY() {
		return PET_VARIETY;
	}


	public void setPET_VARIETY(String pET_VARIETY) {
		PET_VARIETY = pET_VARIETY;
	}


	public String getPET_NAME() {
		return PET_NAME;
	}


	public void setPET_NAME(String pET_NAME) {
		PET_NAME = pET_NAME;
	}


	public int getPET_AGE() {
		return PET_AGE;
	}


	public void setPET_AGE(int pET_AGE) {
		PET_AGE = pET_AGE;
	}


	public String getPET_GENDER() {
		return PET_GENDER;
	}


	public void setPET_GENDER(String pET_GENDER) {
		PET_GENDER = pET_GENDER;
	}


	public String getPET_COMMENT() {
		return PET_COMMENT;
	}


	public void setPET_COMMENT(String pET_COMMENT) {
		PET_COMMENT = pET_COMMENT;
	}


	@Override
	public String toString() {
		return "MyPetVO [PET_NO=" + PET_NO + ", PET_OWNER=" + PET_OWNER + ", PET_KIND=" + PET_KIND + ", PET_VARIETY="
				+ PET_VARIETY + ", PET_NAME=" + PET_NAME + ", PET_AGE=" + PET_AGE + ", PET_GENDER=" + PET_GENDER
				+ ", PET_COMMENT=" + PET_COMMENT + "]";
	}

}
