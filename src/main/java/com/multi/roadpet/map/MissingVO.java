package com.multi.roadpet.map;

public class MissingVO {

	private double lat;
	private double lon;
	
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	@Override
	public String toString() {
		return "MissingVO [lat=" + lat + ", lon=" + lon + "]";
	}
}