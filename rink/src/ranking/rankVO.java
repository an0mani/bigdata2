package ranking;

public class rankVO {
private String name;
private String latitude;
private String longtude;
private String area;
private String addr;
private String tel;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getLongtude() {
	return longtude;
}
public void setLongtude(String longtude) {
	this.longtude = longtude;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public rankVO(String name, String latitude, String longtude, String area, String addr, String tel) {
	this.name = name;
	this.latitude = latitude;
	this.longtude = longtude;
	this.area = area;
	this.addr = addr;
	this.tel = tel;
}


}
