package jy_com.DAO;

public class jy_managerVO {

	private String name;
	private int num;
	private String title;
	private String text;
	private String date;

	public jy_managerVO(String name, int num, String title, String text, String date) {
		super();
		this.name = name;
		this.num = num;
		this.title = title;
		this.text = text;
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

}
