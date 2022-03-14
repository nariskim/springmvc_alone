package com.mycompany.myapp.modules.code;

public class CodeVo {

	// oyCodeGroup
	private String oycgSeq;

	private String oycdSeq;

	// oyCodeSearch
	private String scOycgSeq = "";

	// oyCodeGroupSearch
	private String scOycgName = "";
	private Integer scOycgDelNy;

	// common
	private String scOption;
	private String scValue;
	
	public String getOycgSeq() {
		return oycgSeq;
	}

	public void setOycgSeq(String oycgSeq) {
		this.oycgSeq = oycgSeq;
	}

	public String getOycdSeq() {
		return oycdSeq;
	}

	public void setOycdSeq(String oycdSeq) {
		this.oycdSeq = oycdSeq;
	}

	public String getScOycgSeq() {
		return scOycgSeq;
	}

	public void setScOycgSeq(String scOycgSeq) {
		this.scOycgSeq = scOycgSeq;
	}

	public String getScOycgName() {
		return scOycgName;
	}

	public void setScOycgName(String scOycgName) {
		this.scOycgName = scOycgName;
	}

	public Integer getScOycgDelNy() {
		return scOycgDelNy;
	}

	public void setScOycgDelNy(Integer scOycgDelNy) {
		this.scOycgDelNy = scOycgDelNy;
	}

	public String getScOption() {
		return scOption;
	}

	public void setScOption(String scOption) {
		this.scOption = scOption;
	}

	public String getScValue() {
		return scValue;
	}

	public void setScValue(String scValue) {
		this.scValue = scValue;
	}

}
