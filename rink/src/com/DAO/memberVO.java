package com.DAO;

public class memberVO {

	String id;
	String pw;
	String babyName;
	String gender;
	String phone;
	String blood;
	int weight;
	int height;
	String birthday;
	int cnt;

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public memberVO(String id, String pw, String babyName, String gender, String phone, String blood, int weight,
			int height, String birthday) {
		super();
		this.id = id;
		this.pw = pw;
		this.babyName = babyName;
		this.gender = gender;
		this.phone = phone;
		this.blood = blood;
		this.weight = weight;
		this.height = height;
		this.birthday = birthday;
	}

	public memberVO(String babyName, String gender, String blood, int weight, int height, String birthday) {
		super();
		this.babyName = babyName;
		this.gender = gender;
		this.blood = blood;
		this.weight = weight;
		this.height = height;
		this.birthday = birthday;
	}

	public memberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	public memberVO(String id, String pw, String babyName, int cnt) {
		super();
		this.id = id;
		this.pw = pw;
		this.babyName = babyName;
		this.cnt = cnt;
	}
	
	public memberVO(String id, String pw, String babyName, String gender, String blood, int weight, int height,
			String birthday, int cnt) {
		super();
		this.id = id;
		this.pw = pw;
		this.babyName = babyName;
		this.gender = gender;
		this.blood = blood;
		this.weight = weight;
		this.height = height;
		this.birthday = birthday;
		this.cnt = cnt;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBabyName() {
		return babyName;
	}

	public void setBabyName(String babyName) {
		this.babyName = babyName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

}
