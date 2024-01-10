package com.multi.roadpet.lounge;

public class LoungePageVO {
	private int start;
	private int end;
	private int page;
	private String keyWord;
	private String searchType;
	
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	public void setStartEnd() { 
		end = page * 5; 
		start = 1 + (page - 1) * 5;
	}
	
	@Override
	public String toString() {
		return "LoungePageVO [start=" + start + ", end=" + end + ", page=" + page + ", keyWord=" + keyWord
				+ ", searchType=" + searchType + "]";
	}
	

	
	
	
	
}
