package com.compro.entity;

public class Trek {
	public Trek(String trekname, String startdate, String enddate,
			String meetup, String category,String description,String imgurl, String treksummary) {
		super();
		this.trekname = trekname;
		this.startdate = startdate;
		this.enddate = enddate;
		this.meetup = meetup;
		this.category = category;
		this.description = description;
		this.imgurl = imgurl;
		this.treksummary = treksummary;
	
	}
	String trekname;
	String startdate;
	String enddate;
	String meetup;
	String category;
	String imgurl;
	String description;
	
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getTreksummary() {
		return treksummary;
	}
	public void setTreksummary(String treksummary) {
		this.treksummary = treksummary;
	}
	String treksummary;
	
	public String getTrekname() {
		return trekname;
	}
	public void setTrekname(String trekname) {
		this.trekname = trekname;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getMeetup() {
		return meetup;
	}
	public void setMeetup(String meetup) {
		this.meetup = meetup;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
