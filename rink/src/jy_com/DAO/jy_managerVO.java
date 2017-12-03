package jy_com.DAO;

public class jy_managerVO {

	private int num;
	private String id;
	private String name;
	private String title;
	private String text;
	private String date;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public jy_managerVO(int num, String id, String name, String title, String text, String date) {
		this.num = num;
		this.id = id;
		this.name = name;
		this.title = title;
		this.text = text;
		this.date = date;
	}

	

}
