package com.DAO;

public class NoticeVO {
	private int num;
	private String title;
	private String text;
	private String date;
	
	public NoticeVO(int num, String title, String text, String date) {
		super();
		this.num = num;
		this.title = title;
		this.text = text;
		this.date = date;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String gettext() {
		return text;
	}

	public void settext(String text) {
		this.text = text;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
}
