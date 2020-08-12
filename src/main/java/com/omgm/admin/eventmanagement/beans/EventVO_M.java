package com.omgm.admin.eventmanagement.beans;

public class EventVO_M {

		private int EVENT_NO;
		private int EVENT_STATUS;
		private String EVENT_START;
		private String EVENT_END;
		private String EVENT_TITLE;
		private String EVENT_CONTENT;
		private String EVENT_IMG;
		
		public String getEVENT_IMG() {
			return EVENT_IMG;
		}
		public void setEVENT_IMG(String eVENT_IMG) {
			EVENT_IMG = eVENT_IMG;
		}
		public int getEVENT_STATUS() {
			return EVENT_STATUS;
		}
		public void setEVENT_STATUS(int eVENT_STATUS) {
			EVENT_STATUS = eVENT_STATUS;
		}
		public int getEVENT_NO() {
			return EVENT_NO;
		}
		public void setEVENT_NO(int eVENT_NO) {
			EVENT_NO = eVENT_NO;
		}
		public String getEVENT_START() {
			return EVENT_START;
		}
		public void setEVENT_START(String eVENT_START) {
			EVENT_START = eVENT_START;
		}
		public String getEVENT_END() {
			return EVENT_END;
		}
		public void setEVENT_END(String eVENT_END) {
			EVENT_END = eVENT_END;
		}
		public String getEVENT_TITLE() {
			return EVENT_TITLE;
		}
		public void setEVENT_TITLE(String eVENT_TITLE) {
			EVENT_TITLE = eVENT_TITLE;
		}
		public String getEVENT_CONTENT() {
			return EVENT_CONTENT;
		}
		public void setEVENT_CONTENT(String eVENT_CONTENT) {
			EVENT_CONTENT = eVENT_CONTENT;
		}
		
		@Override
		public String toString() {
			return "EventVO_M [EVENT_NO=" + EVENT_NO + ", EVENT_START=" + EVENT_START + ", EVENT_END=" + EVENT_END
					+ ", EVENT_TITLE=" + EVENT_TITLE + ", EVENT_CONTENT=" + EVENT_CONTENT + "]";
		}
		
}
