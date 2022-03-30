package com.mycompany.myapp.modules.durian;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class Durian {

	
	private String oymbSeq;
	private String oymbId;
	private String oymbName;
	private String oymbNameEng;
	private String oymbNickName;
	private String oymbPassword;
	private Date oymbDob;
	private Integer oymbGenderCd;
	private Integer oymbSkinTypeCd;
	private Integer oymbPersonalColorCd;
	private Integer oymbInterestsCd;;
	private Integer oymbGradeCd;
	private Integer oymbSmsConsentNy;
	private Integer oymbEmailConsentNy;
	private Integer oymbPushConsentNy;
	private Integer oymbSavedCd;
	private Integer oymbDelNy;
	
	
	private Date regDateTime;
	private Date modDateTime;
	
	private String oyjqSeq;
	private String oyjqQuestionCd;
	private String oyjqAnswer;
	private Integer oyjqDelNy;
	
// oymbAddress	
	private String oymaSeq;
	private Integer oymaDefaulyNy;
	private Integer oymaTypeCd;
	private String oymaTitle;
	private String oymaZipCode;
	private String oymaAddress1;
	private String oymaAddress2;
	private String oymaAddress3;
	private Integer oymaDelNy;
//	private String oymbSeq;

//	oymbAddressArray	
//	private Integer[] oymaDefaulyNy;
//	private Integer[] oymaTypeCd;
//	private String[] oymaTitle;
//	private String[] oymaZipCode;
//	private String[] oymaAddress1;
//	private String[] oymaAddress2;
//	private String[] oymaAddress3;
//	private Integer[] oymaDelNy;

//	oymbNationality
	private String oymnSeq;
	private Integer oymnDelNy;
//	private String oymbSeq;
//	private String oynaSeq;

	
//	oyNationality
	private String oynaSeq;
	private String oynaName;
	private Integer oynaDelNy;

	
//	oymbPhone	
	private String oympSeq;
	private Integer oympDefaultNy;
	private Integer oympTypeCd;
	private Integer oympDeviceCd;
	private Integer oympTelecomCd;
	private String oympNumber;
	private Integer oympDelNy;
//	private String oymbSeq;
	
//	oymbPhoneArray
//	private Integer[] oympDefaultNy;
//	private Integer[] oympTypeCd;
//	private Integer[] oympDeviceCd;
//	private Integer[] oympTelecomCd;
//	private String[] oympNumber;
	
	
// oyCodeGroup	
	private String oycgSeq;
	private String oycgName;
	private Integer oycgDelNy;

//	oyCode	
	private String oycdSeq;
	private String oycdName;
	private Integer oycdDelNy;
//	private String oycgSeq = "";


//	oymbEmail	
	private String oymeSeq;
	private Integer oymeDefaultNy;
	private Integer oymeTypeCd;
	private String oymeEmailFull;
	private String oymeEmailAccount;
	private String oymeEmailDomain;
	private Integer oymeEmailDomainCd;
	private Integer oymeDelNy;
//	private String oymbSeq;
	
// oymbEmailArray	
//	private Integer[] oymeDefaultNy;
//	private Integer[] oymeTypeCd;
//	private String[] oymeEmailFull;
//	private String[] oymeEmailAccount;
//	private String[] oymeEmailDomain;
//	private Integer[] oymeEmailDomainCd;
//	private Integer[] oymeDelNy;
	
	public static List<Durian> cachedCodeArrayList = new ArrayList<Durian>();


	public String getOymbSeq() {
		return oymbSeq;
	}

	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}

	public String getOymbId() {
		return oymbId;
	}

	public void setOymbId(String oymbId) {
		this.oymbId = oymbId;
	}

	public String getOymbName() {
		return oymbName;
	}

	public void setOymbName(String oymbName) {
		this.oymbName = oymbName;
	}

	public String getOymbNameEng() {
		return oymbNameEng;
	}

	public void setOymbNameEng(String oymbNameEng) {
		this.oymbNameEng = oymbNameEng;
	}

	public String getOymbNickName() {
		return oymbNickName;
	}

	public void setOymbNickName(String oymbNickName) {
		this.oymbNickName = oymbNickName;
	}

	public String getOymbPassword() {
		return oymbPassword;
	}

	public void setOymbPassword(String oymbPassword) {
		this.oymbPassword = oymbPassword;
	}

	public Date getOymbDob() {
		return oymbDob;
	}

	public void setOymbDob(Date oymbDob) {
		this.oymbDob = oymbDob;
	}

	public Integer getOymbGenderCd() {
		return oymbGenderCd;
	}

	public void setOymbGenderCd(Integer oymbGenderCd) {
		this.oymbGenderCd = oymbGenderCd;
	}

	public Integer getOymbSkinTypeCd() {
		return oymbSkinTypeCd;
	}

	public void setOymbSkinTypeCd(Integer oymbSkinTypeCd) {
		this.oymbSkinTypeCd = oymbSkinTypeCd;
	}

	public Integer getOymbPersonalColorCd() {
		return oymbPersonalColorCd;
	}

	public void setOymbPersonalColorCd(Integer oymbPersonalColorCd) {
		this.oymbPersonalColorCd = oymbPersonalColorCd;
	}

	public Integer getOymbInterestsCd() {
		return oymbInterestsCd;
	}

	public void setOymbInterestsCd(Integer oymbInterestsCd) {
		this.oymbInterestsCd = oymbInterestsCd;
	}

	public Integer getOymbGradeCd() {
		return oymbGradeCd;
	}

	public void setOymbGradeCd(Integer oymbGradeCd) {
		this.oymbGradeCd = oymbGradeCd;
	}

	public Integer getOymbSmsConsentNy() {
		return oymbSmsConsentNy;
	}

	public void setOymbSmsConsentNy(Integer oymbSmsConsentNy) {
		this.oymbSmsConsentNy = oymbSmsConsentNy;
	}

	public Integer getOymbEmailConsentNy() {
		return oymbEmailConsentNy;
	}

	public void setOymbEmailConsentNy(Integer oymbEmailConsentNy) {
		this.oymbEmailConsentNy = oymbEmailConsentNy;
	}

	public Integer getOymbPushConsentNy() {
		return oymbPushConsentNy;
	}

	public void setOymbPushConsentNy(Integer oymbPushConsentNy) {
		this.oymbPushConsentNy = oymbPushConsentNy;
	}

	public Integer getOymbSavedCd() {
		return oymbSavedCd;
	}

	public void setOymbSavedCd(Integer oymbSavedCd) {
		this.oymbSavedCd = oymbSavedCd;
	}

	public Integer getOymbDelNy() {
		return oymbDelNy;
	}

	public void setOymbDelNy(Integer oymbDelNy) {
		this.oymbDelNy = oymbDelNy;
	}

	public Date getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}

	public Date getModDateTime() {
		return modDateTime;
	}

	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}

	public String getOyjqSeq() {
		return oyjqSeq;
	}

	public void setOyjqSeq(String oyjqSeq) {
		this.oyjqSeq = oyjqSeq;
	}

	public String getOyjqQuestionCd() {
		return oyjqQuestionCd;
	}

	public void setOyjqQuestionCd(String oyjqQuestionCd) {
		this.oyjqQuestionCd = oyjqQuestionCd;
	}

	public String getOyjqAnswer() {
		return oyjqAnswer;
	}

	public void setOyjqAnswer(String oyjqAnswer) {
		this.oyjqAnswer = oyjqAnswer;
	}

	public Integer getOyjqDelNy() {
		return oyjqDelNy;
	}

	public void setOyjqDelNy(Integer oyjqDelNy) {
		this.oyjqDelNy = oyjqDelNy;
	}

	public String getOymaSeq() {
		return oymaSeq;
	}

	public void setOymaSeq(String oymaSeq) {
		this.oymaSeq = oymaSeq;
	}

	public Integer getOymaDefaulyNy() {
		return oymaDefaulyNy;
	}

	public void setOymaDefaulyNy(Integer oymaDefaulyNy) {
		this.oymaDefaulyNy = oymaDefaulyNy;
	}

	public Integer getOymaTypeCd() {
		return oymaTypeCd;
	}

	public void setOymaTypeCd(Integer oymaTypeCd) {
		this.oymaTypeCd = oymaTypeCd;
	}

	public String getOymaTitle() {
		return oymaTitle;
	}

	public void setOymaTitle(String oymaTitle) {
		this.oymaTitle = oymaTitle;
	}

	public String getOymaZipCode() {
		return oymaZipCode;
	}

	public void setOymaZipCode(String oymaZipCode) {
		this.oymaZipCode = oymaZipCode;
	}

	public String getOymaAddress1() {
		return oymaAddress1;
	}

	public void setOymaAddress1(String oymaAddress1) {
		this.oymaAddress1 = oymaAddress1;
	}

	public String getOymaAddress2() {
		return oymaAddress2;
	}

	public void setOymaAddress2(String oymaAddress2) {
		this.oymaAddress2 = oymaAddress2;
	}

	public String getOymaAddress3() {
		return oymaAddress3;
	}

	public void setOymaAddress3(String oymaAddress3) {
		this.oymaAddress3 = oymaAddress3;
	}

	public Integer getOymaDelNy() {
		return oymaDelNy;
	}

	public void setOymaDelNy(Integer oymaDelNy) {
		this.oymaDelNy = oymaDelNy;
	}

	public String getOymnSeq() {
		return oymnSeq;
	}

	public void setOymnSeq(String oymnSeq) {
		this.oymnSeq = oymnSeq;
	}

	public Integer getOymnDelNy() {
		return oymnDelNy;
	}

	public void setOymnDelNy(Integer oymnDelNy) {
		this.oymnDelNy = oymnDelNy;
	}

	public String getOynaSeq() {
		return oynaSeq;
	}

	public void setOynaSeq(String oynaSeq) {
		this.oynaSeq = oynaSeq;
	}

	public String getOynaName() {
		return oynaName;
	}

	public void setOynaName(String oynaName) {
		this.oynaName = oynaName;
	}

	public Integer getOynaDelNy() {
		return oynaDelNy;
	}

	public void setOynaDelNy(Integer oynaDelNy) {
		this.oynaDelNy = oynaDelNy;
	}

	public String getOympSeq() {
		return oympSeq;
	}

	public void setOympSeq(String oympSeq) {
		this.oympSeq = oympSeq;
	}

	public Integer getOympDefaultNy() {
		return oympDefaultNy;
	}

	public void setOympDefaultNy(Integer oympDefaultNy) {
		this.oympDefaultNy = oympDefaultNy;
	}

	public Integer getOympTypeCd() {
		return oympTypeCd;
	}

	public void setOympTypeCd(Integer oympTypeCd) {
		this.oympTypeCd = oympTypeCd;
	}

	public Integer getOympDeviceCd() {
		return oympDeviceCd;
	}

	public void setOympDeviceCd(Integer oympDeviceCd) {
		this.oympDeviceCd = oympDeviceCd;
	}

	public Integer getOympTelecomCd() {
		return oympTelecomCd;
	}

	public void setOympTelecomCd(Integer oympTelecomCd) {
		this.oympTelecomCd = oympTelecomCd;
	}

	public String getOympNumber() {
		return oympNumber;
	}

	public void setOympNumber(String oympNumber) {
		this.oympNumber = oympNumber;
	}

	public Integer getOympDelNy() {
		return oympDelNy;
	}

	public void setOympDelNy(Integer oympDelNy) {
		this.oympDelNy = oympDelNy;
	}

	public String getOycgSeq() {
		return oycgSeq;
	}

	public void setOycgSeq(String oycgSeq) {
		this.oycgSeq = oycgSeq;
	}

	public String getOycgName() {
		return oycgName;
	}

	public void setOycgName(String oycgName) {
		this.oycgName = oycgName;
	}

	public Integer getOycgDelNy() {
		return oycgDelNy;
	}

	public void setOycgDelNy(Integer oycgDelNy) {
		this.oycgDelNy = oycgDelNy;
	}

	public String getOycdSeq() {
		return oycdSeq;
	}

	public void setOycdSeq(String oycdSeq) {
		this.oycdSeq = oycdSeq;
	}

	public String getOycdName() {
		return oycdName;
	}

	public void setOycdName(String oycdName) {
		this.oycdName = oycdName;
	}

	public Integer getOycdDelNy() {
		return oycdDelNy;
	}

	public void setOycdDelNy(Integer oycdDelNy) {
		this.oycdDelNy = oycdDelNy;
	}

	public String getOymeSeq() {
		return oymeSeq;
	}

	public void setOymeSeq(String oymeSeq) {
		this.oymeSeq = oymeSeq;
	}

	public Integer getOymeDefaultNy() {
		return oymeDefaultNy;
	}

	public void setOymeDefaultNy(Integer oymeDefaultNy) {
		this.oymeDefaultNy = oymeDefaultNy;
	}

	public Integer getOymeTypeCd() {
		return oymeTypeCd;
	}

	public void setOymeTypeCd(Integer oymeTypeCd) {
		this.oymeTypeCd = oymeTypeCd;
	}

	public String getOymeEmailFull() {
		return oymeEmailFull;
	}

	public void setOymeEmailFull(String oymeEmailFull) {
		this.oymeEmailFull = oymeEmailFull;
	}

	public String getOymeEmailAccount() {
		return oymeEmailAccount;
	}

	public void setOymeEmailAccount(String oymeEmailAccount) {
		this.oymeEmailAccount = oymeEmailAccount;
	}

	public String getOymeEmailDomain() {
		return oymeEmailDomain;
	}

	public void setOymeEmailDomain(String oymeEmailDomain) {
		this.oymeEmailDomain = oymeEmailDomain;
	}

	public Integer getOymeEmailDomainCd() {
		return oymeEmailDomainCd;
	}

	public void setOymeEmailDomainCd(Integer oymeEmailDomainCd) {
		this.oymeEmailDomainCd = oymeEmailDomainCd;
	}

	public Integer getOymeDelNy() {
		return oymeDelNy;
	}

	public void setOymeDelNy(Integer oymeDelNy) {
		this.oymeDelNy = oymeDelNy;
	}

	
	
	}