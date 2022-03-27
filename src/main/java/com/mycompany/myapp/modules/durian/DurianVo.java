package com.mycompany.myapp.modules.durian;

public class DurianVo {

	private String oymbSeq;
	private String oyjqSeq;
	private String oynaSeq;
	private String oymnSeq;
	private String oymaSeq;
	private String oympSeq;
	private String oymeSeq;
	private String oyjqQuestionCd;	
	private String oympTelecomCd;
	private String oymeEmailDomainCd;
	
	private Integer oympDefaultNy;
	

	// oyMemberSearch

	private String scOymbName;
	private Integer scOymbDelNy ; 

	// common
	private String scOption;
	private String scValue;

	// Paging

	private int thisPage = 1; // 현재 페이지
	private int rowNumToShow = 10; // 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5; // 화면에 보여줄 페이징 번호 갯수

	private int totalRows; // 전체 데이터 갯수
	private int totalPages; // 전체 페이지 번호
	private int startPage; // 시작 페이지 번호
	private int endPage; // 마지막 페이지 번호

	private int startRnumForOracle = 1; // 쿼리 시작 row
	private int endRnumForOracle; // 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0; // 쿼리 시작 row

	public void setParamsPaging(int totalRowsParam) {

		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages + 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}

		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}

		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1)
			startRnumForOracle = 1;

		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage - 1)));
		}

		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);

	}

	public String getOymbSeq() {
		return oymbSeq;
	}

	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}

	public String getOyjqSeq() {
		return oyjqSeq;
	}

	public void setOyjqSeq(String oyjqSeq) {
		this.oyjqSeq = oyjqSeq;
	}

	public String getOynaSeq() {
		return oynaSeq;
	}

	public void setOynaSeq(String oynaSeq) {
		this.oynaSeq = oynaSeq;
	}

	public String getOymnSeq() {
		return oymnSeq;
	}

	public void setOymnSeq(String oymnSeq) {
		this.oymnSeq = oymnSeq;
	}

	public String getOymaSeq() {
		return oymaSeq;
	}

	public void setOymaSeq(String oymaSeq) {
		this.oymaSeq = oymaSeq;
	}

	public String getOympSeq() {
		return oympSeq;
	}

	public void setOympSeq(String oympSeq) {
		this.oympSeq = oympSeq;
	}

	public String getOymeSeq() {
		return oymeSeq;
	}

	public void setOymeSeq(String oymeSeq) {
		this.oymeSeq = oymeSeq;
	}

	public String getOyjqQuestionCd() {
		return oyjqQuestionCd;
	}

	public void setOyjqQuestionCd(String oyjqQuestionCd) {
		this.oyjqQuestionCd = oyjqQuestionCd;
	}

	public String getOympTelecomCd() {
		return oympTelecomCd;
	}

	public void setOympTelecomCd(String oympTelecomCd) {
		this.oympTelecomCd = oympTelecomCd;
	}

	public String getOymeEmailDomainCd() {
		return oymeEmailDomainCd;
	}

	public void setOymeEmailDomainCd(String oymeEmailDomainCd) {
		this.oymeEmailDomainCd = oymeEmailDomainCd;
	}

	public Integer getOympDefaultNy() {
		return oympDefaultNy;
	}

	public void setOympDefaultNy(Integer oympDefaultNy) {
		this.oympDefaultNy = oympDefaultNy;
	}

	public String getScOymbName() {
		return scOymbName;
	}

	public void setScOymbName(String scOymbName) {
		this.scOymbName = scOymbName;
	}

	public Integer getScOymbDelNy() {
		return scOymbDelNy;
	}

	public void setScOymbDelNy(Integer scOymbDelNy) {
		this.scOymbDelNy = scOymbDelNy;
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

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	
	
	
}
