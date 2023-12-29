package com.multi.roadpet.pet;

import java.util.Date;

public class PetInfoVO {
	private int pet_id;
	private int user_id;
	private String pet_name;
	private String pet_birth;
	private String pet_type;
	private String pet_sex;
	private String pet_detail;
	private int pet_neutering;
	private int pet_vaccin;
	private String pet_photo;
	
	public String getPet_detail() {
		return pet_detail;
	}
	public void setPet_detail(String pet_detail) {
		this.pet_detail = pet_detail;
	}
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public String getPet_birth() {
		return pet_birth;
	}
	public void setPet_birth(String pet_birth) {
		this.pet_birth = pet_birth;
	}
	public String getPet_type() {
		return pet_type;
	}
	public void setPet_type(String pet_type) {
		this.pet_type = pet_type;
	}
	public String getPet_sex() {
		return pet_sex;
	}
	public void setPet_sex(String pet_sex) {
		this.pet_sex = pet_sex;
	}
	public int getPet_neutering() {
		return pet_neutering;
	}
	public void setPet_neutering(int pet_neutering) {
		this.pet_neutering = pet_neutering;
	}
	public int getPet_vaccin() {
		return pet_vaccin;
	}
	public void setPet_vaccin(int pet_vaccin) {
		this.pet_vaccin = pet_vaccin;
	}
	public String getPet_photo() {
		return pet_photo;
	}
	public void setPet_photo(String pet_photo) {
		this.pet_photo = pet_photo;
	}
	@Override
	public String toString() {
		return "PetinfoVO [pet_id=" + pet_id + ", user_id=" + user_id + ", pet_name=" + pet_name + ", pet_birth="
				+ pet_birth + ", pet_type=" + pet_type + ", pet_sex=" + pet_sex + ", pet_neutering=" + pet_neutering
				+ ", pet_vaccin=" + pet_vaccin + ", pet_photo=" + pet_photo + "]";
	}
	
	
}
