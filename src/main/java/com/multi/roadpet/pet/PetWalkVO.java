package com.multi.roadpet.pet;




public class PetWalkVO {

	private int pet_id;
	private String pet_name;
	private int walk_id;
	private String walk_date;
	private String walk_start;
	private String walk_end ;
	private int walk_distance ;
	
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public int getWalk_id() {
		return walk_id;
	}
	public void setWalk_id(int walk_id) {
		this.walk_id = walk_id;
	}
	
	public String getWalk_date() {
		return walk_date;
	}
	public void setWalk_date(String walk_date) {
		this.walk_date = walk_date;
	}
	public String getWalk_start() {
		return walk_start;
	}
	public void setWalk_start(String walk_start) {
		this.walk_start = walk_start;
	}
	public String getWalk_end() {
		return walk_end;
	}
	public void setWalk_end(String walk_end) {
		this.walk_end = walk_end;
	}
	public int getWalk_distance() {
		return walk_distance;
	}
	public void setWalk_distance(int walk_distance) {
		this.walk_distance = walk_distance;
	}
	
	
	@Override
	public String toString() {
		return "PetWalkVO [pet_id=" + pet_id + ", walk_id=" + walk_id + ", walk_date=" + walk_date + ",walk_ distance="
				+ walk_distance + ", walk_start=" + walk_start + ", walk_end=" + walk_end + "]";
	}

	
	
}
