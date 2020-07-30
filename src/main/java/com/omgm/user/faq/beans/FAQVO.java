package com.omgm.user.faq.beans;


public class FAQVO {

	private int FAQ_NO;
	private String FAQ_ASK;
	private String FAQ_ANSWER;
	private int FAQ_CATEGORYNUM;
	private String CATEGORY_NAME;
	
	public int getFAQ_NO() {
		return FAQ_NO;
	}
	public void setFAQ_NO(int fAQ_NO) {
		FAQ_NO = fAQ_NO;
	}
	public String getFAQ_ASK() {
		return FAQ_ASK;
	}
	public void setFAQ_ASK(String fAQ_ASK) {
		FAQ_ASK = fAQ_ASK;
	}
	public String getFAQ_ANSWER() {
		return FAQ_ANSWER;
	}
	public void setFAQ_ANSWER(String fAQ_ANSWER) {
		FAQ_ANSWER = fAQ_ANSWER;
	}
	public int getFAQ_CATEGORYNUM() {
		return FAQ_CATEGORYNUM;
	}
	public void setFAQ_CATEGORYNUM(int fAQ_CATEGORYNUM) {
		FAQ_CATEGORYNUM = fAQ_CATEGORYNUM;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	
	@Override
	public String toString() {
		return "FAQVO [FAQ_NO=" + FAQ_NO + ", FAQ_ASK=" + FAQ_ASK + ", FAQ_ANSWER=" + FAQ_ANSWER + ", FAQ_CATEGORYNUM="
				+ FAQ_CATEGORYNUM + ", CATEGORY_NAME=" + CATEGORY_NAME + "]";
	}
	
}
