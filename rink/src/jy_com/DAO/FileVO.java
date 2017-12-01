package jy_com.DAO;

public class FileVO {

	private String name;
	private int num;
	private String title;
	private String text;
	private String wdate;
	private String filename;

	public FileVO(String name, int num, String title, String text, String wdate, String filename) {
		super();
		this.name = name;
		this.num = num;
		this.title = title;
		this.text = text;
		this.wdate = wdate;
		this.filename = filename;
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

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}
