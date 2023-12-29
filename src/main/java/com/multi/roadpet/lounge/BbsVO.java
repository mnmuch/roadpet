package com.multi.roadpet.lounge;

public class BbsVO {
	private int product_id;
	private int user_id;
	private String product_title;
	private String product_content;
	private String product_price;
	private String product_img;
	private Double product_lat;
	private Double product_lon;
	private String product_location;
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public Double getProduct_lat() {
		return product_lat;
	}
	public void setProduct_lat(Double product_lat) {
		this.product_lat = product_lat;
	}
	public Double getProduct_lon() {
		return product_lon;
	}
	public void setProduct_lon(Double product_lon) {
		this.product_lon = product_lon;
	}
	public String getProduct_location() {
		return product_location;
	}
	public void setProduct_location(String product_location) {
		this.product_location = product_location;
	}
	@Override
	public String toString() {
		return "BbsDTO [product_id=" + product_id + ", user_id=" + user_id + ", product_title=" + product_title
				+ ", product_content=" + product_content + ", product_price=" + product_price + ", product_img="
				+ product_img + ", product_lat=" + product_lat + ", product_lon=" + product_lon + ", product_location="
				+ product_location + "]";
	}
	
	
	

}
