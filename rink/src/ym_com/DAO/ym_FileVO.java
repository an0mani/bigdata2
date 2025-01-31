package ym_com.DAO;

public class ym_FileVO {
	private String id;
	private int num;
	private String title;
	private String text;
	private String wdate;
	private String filename;
	private String kind;
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
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public ym_FileVO(String id, int num, String title, String text, String wdate, String filename, String kind) {
		this.id = id;
		this.num = num;
		this.title = title;
		this.text = text;
		this.wdate = wdate;
		this.filename = filename;
		this.kind = kind;
	}
	
}
