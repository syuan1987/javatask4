package com.ptteng.entity;

import org.springframework.stereotype.Component;

@Component
public class Student {
	private int id;
	private String stu_name;
	private long create_at;
	private long update_at;
	private String sign;
	private String stu_school;
	private String stu_introducer;
	private String url_head;
	private int	 course_type;
	private String company;
	private String person_introduce;
	private int good_status;

	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public String getStu_name(){
		return stu_name;
	}
	public void setStu_name(String stu_name){
		this.stu_name = stu_name;
	}
	public long getCreate_at(){
		return create_at;
	}
	public void setCreate_at(long create_at) {
		this.create_at = create_at;
	}
	public long getUpdate_at(){
		return update_at;
	}
	public void setUpdate_at(long update_at) {
		this.update_at = update_at;
	}
	public String getSign(){
		return sign;
	}
	public void setSign(String sign){
		this.sign = sign;
	}
	public String getStu_school(){
		return stu_school;
	}
	public void setStu_school(String stu_school){
		this.stu_school = stu_school;
	}
	public String getStu_introducer(){
		return stu_introducer;
	}
	public void setStu_introducer(String stu_introducer){
		this.stu_introducer = stu_introducer;
	}
	public String getUrl_head(){
		return url_head;
	}
	public void setUrl_head(String url_head){
		this.url_head = url_head;
	}
	public int getCourse_type(){
		return course_type;
	}
	public void setCourse_type(int course_type){
		this.course_type = course_type;
	}
	public String getCompany(){
		return company;
	}
	public void setCompany(String company){
		this.company = company;
	}
	public String getPerson_introduce(){
		return person_introduce;
	}
	public void setPerson_introduce(String person_introduce){
		this.person_introduce = person_introduce;
	}
	public int getGood_status(){
		return good_status;
	}
	public void setGood_status(int good_status){
		this.good_status = good_status;
	}

	@Override
	public String toString(){
		return "123";
	}

	public Student(){
		super();
	}

	public Student(int id, String stu_name, long create_at, long update_at, String sign, String stu_school, String stu_introducer){
		super();
		this.id = id;
		this.stu_name = stu_name;
		this.create_at = create_at;
		this.update_at = update_at;
		this.sign = sign;
		this.stu_school = stu_school;
		this.stu_introducer = stu_introducer;
	}
	
}
