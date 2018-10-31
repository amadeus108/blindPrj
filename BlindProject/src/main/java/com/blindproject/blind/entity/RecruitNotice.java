package com.blindproject.blind.entity;

import java.util.Date;

//채용 공고
public class RecruitNotice {

	// 아이디
	private int id;

	// 제목
	private String title;

	// 내용
	private String contents;

	// 등록일
	private Date regDate;

	// 모집 시작일
	private Date strDate;

	// 모집 종료일
	private Date endDate;

	// 채용구분 아이디(인턴, 계약직, 정규직)
	private int recruitDivisionId;

	// 작성자 아이디(Employee Id)
	private int writerId;

	// 전형구분 아이디
	private int typeId;

	// 회사명 아이디
	private int companyId;
	
	//------------------------조인 컬럼
	private String cName;
	
	private String rdValue;
	
	private String tValue;
	
	private int rNum;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getStrDate() {
		return strDate;
	}

	public void setStrDate(Date strDate) {
		this.strDate = strDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getRecruitDivisionId() {
		return recruitDivisionId;
	}

	public void setRecruitDivisionId(int recruitDivisionId) {
		this.recruitDivisionId = recruitDivisionId;
	}

	public int getWriterId() {
		return writerId;
	}

	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getRdValue() {
		return rdValue;
	}

	public void setRdValue(String rdValue) {
		this.rdValue = rdValue;
	}

	public String gettValue() {
		return tValue;
	}

	public void settValue(String tValue) {
		this.tValue = tValue;
	}
	
	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public RecruitNotice() {
		super();
	}

	public RecruitNotice(int id, String title, String contents, Date regDate, Date strDate, Date endDate,
			int recruitDivisionId, int writerId, int typeId, int companyId, String cName, String rdValue,
			String tValue, int rNum) {
		super();
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.regDate = regDate;
		this.strDate = strDate;
		this.endDate = endDate;
		this.recruitDivisionId = recruitDivisionId;
		this.writerId = writerId;
		this.typeId = typeId;
		this.companyId = companyId;
		this.cName = cName;
		this.rdValue = rdValue;
		this.tValue = tValue;
		this.rNum = rNum;
	}

}
