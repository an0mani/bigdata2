package com.DAO;

public class DiaryVO {
	private String id;
	private int num;
	private String title;
	private String text;
	private String date;
	private String file;
	
	public DiaryVO(String id, int num, String title, String text, String date, String file) {
		super();
		this.id = id;
		this.num = num;
		this.title = title;
		this.text = text;
		this.date = date;
		this.file = file;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
	
}
