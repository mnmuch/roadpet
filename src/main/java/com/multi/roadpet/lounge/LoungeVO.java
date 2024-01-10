package com.multi.roadpet.lounge;

import java.util.Date;

public class LoungeVO {
    private int lounge_id;
    private String lounge_pet_type;
    private int member_user_id;
    private String lounge_title;
    private String lounge_content;
    private String lounge_writer;
    private Date lounge_date;
    private String lounge_img;
    
	public int getLounge_id() {
		return lounge_id;
	}
	public void setLounge_id(int lounge_id) {
		this.lounge_id = lounge_id;
	}
	public String getLounge_pet_type() {
		return lounge_pet_type;
	}
	public void setLounge_pet_type(String lounge_pet_type) {
		this.lounge_pet_type = lounge_pet_type;
	}
	public int getMember_user_id() {
		return member_user_id;
	}
	public void setMember_user_id(int member_user_id) {
		this.member_user_id = member_user_id;
	}
	public String getLounge_title() {
		return lounge_title;
	}
	public void setLounge_title(String lounge_title) {
		this.lounge_title = lounge_title;
	}
	public String getLounge_content() {
		return lounge_content;
	}
	public void setLounge_content(String lounge_content) {
		this.lounge_content = lounge_content;
	}
	public String getLounge_writer() {
		return lounge_writer;
	}
	public void setLounge_writer(String lounge_writer) {
		this.lounge_writer = lounge_writer;
	}
	public Date getLounge_date() {
		return lounge_date;
	}
	public void setLounge_date(Date lounge_date) {
		this.lounge_date = lounge_date;
	}
	public String getLounge_img() {
		return lounge_img;
	}
	public void setLounge_img(String lounge_img) {
		this.lounge_img = lounge_img;
	}
	
	@Override
	public String toString() {
		return "LoungeVO [lounge_id=" + lounge_id + ", lounge_pet_type=" + lounge_pet_type + ", member_user_id="
				+ member_user_id + ", lounge_title=" + lounge_title + ", lounge_content=" + lounge_content
				+ ", lounge_writer=" + lounge_writer + ", lounge_date=" + lounge_date + ", lounge_img=" + lounge_img
				+ "]";
	}
    
	
    
    
}
