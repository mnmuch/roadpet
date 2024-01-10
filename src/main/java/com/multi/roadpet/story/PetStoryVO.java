package com.multi.roadpet.story;

import java.util.Date;

public class PetStoryVO {
	private int story_id;
	private int pet_id;
	private String story_title;
	private String story_content;
	private String story_date;
	private String story_photo;
	private int story_private;
	public int getStory_id() {
		return story_id;
	}
	public void setStory_id(int story_id) {
		this.story_id = story_id;
	}
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public String getStory_title() {
		return story_title;
	}
	public void setStory_title(String story_title) {
		this.story_title = story_title;
	}
	public String getStory_content() {
		return story_content;
	}
	public void setStory_content(String story_content) {
		this.story_content = story_content;
	}
	public String getStory_date() {
		return story_date;
	}
	public void setStory_date(String story_date) {
		this.story_date = story_date;
	}
	public String getStory_photo() {
		return story_photo;
	}
	public void setStory_photo(String story_photo) {
		this.story_photo = story_photo;
	}
	public int getStory_private() {
		return story_private;
	}
	public void setStory_private(int story_private) {
		this.story_private = story_private;
	}
	@Override
	public String toString() {
		return "PetStoryVO [story_id=" + story_id + ", pet_id=" + pet_id + ", story_title=" + story_title
				+ ", story_content=" + story_content + ", story_date=" + story_date + ", story_photo=" + story_photo
				+ ", story_private=" + story_private + "]";
	}
	
}
