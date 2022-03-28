package com.mycompany.myapp.modules.member;

import java.util.Date;

public class MemberVo {

	private String oymbSeq;
	private Date RegDateTime;
	private Date ModDateTime;
	private Integer scOptionDate;
	private String scDateStart;
	private String scDateEnd;
	
	
	public String getOymbSeq() {
		return oymbSeq;
	}
	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}
	public Date getRegDateTime() {
		return RegDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		RegDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return ModDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		ModDateTime = modDateTime;
	}
	public Integer getScOptionDate() {
		return scOptionDate;
	}
	public void setScOptionDate(Integer scOptionDate) {
		this.scOptionDate = scOptionDate;
	}
	public String getScDateStart() {
		return scDateStart;
	}
	public void setScDateStart(String scDateStart) {
		this.scDateStart = scDateStart;
	}
	public String getScDateEnd() {
		return scDateEnd;
	}
	public void setScDateEnd(String scDateEnd) {
		this.scDateEnd = scDateEnd;
	}
	

	
	
}
